/**
 * 
 */
package need.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import need.VO.LoginMemberVO;
import need.service.LoginService;
import sns.BO.NaverBO;
import util.Utils;

/**
 * @author Bomin
 * 
 * 만약 유저가 필수조건임에도 불구하고 체크해제를 한 경우
 * 이미지 URL , 이름 등등은 제공되지 않는다는 가정이 필요함
 * 유일한 구분자 ID가 존재.
 * 나머지는 Nullable 이므로 기본이미지, 랜덤닉네임 생성이 필요
 *  -> Naver로 할 경우 Naver_user( select count(platform)+1 from member where platform = "naver" )님
 *     -> 예시 : Naver_user172 님
 *
 */
@Controller
public class LoginController {
	private static Logger log = LoggerFactory.getLogger("LoginController");

	@Resource(name="loginService")
	LoginService loginService;
	
	@RequestMapping("naverLogin.do")
	public String naverLoginRedirect(NaverBO bo,HttpSession session) throws IOException {
		String[] codeState = bo.getCodeState();
		session.setAttribute("state", codeState[1]);
		return "redirect:"+codeState[0];
	}
	
	@RequestMapping("oauth/naverCallback.do")
	public String naverCallback(String code, String state, NaverBO bo , HttpServletRequest request) throws IOException {
		try {
			String storedState = (String) request.getSession().getAttribute("state");
			if(!state.equals(storedState)) {
				System.out.println("401 State 토큰값이 다릅니다.");
				return "redirct:/";
			} else {
				String AccessTokenURL = bo.getAccessToken(code, state);
				String responseJson = Utils.httpJsonReader(AccessTokenURL, new HashMap<String,String>());
				
				Map<String, String> tokenMaps = NaverBO.parseToken(responseJson);
				log.info("접근 토큰 : "+tokenMaps.get("access_token"));
				log.info("갱신 토큰 : "+tokenMaps.get("refresh_token"));
				if(NaverBO.hasAccess_token(tokenMaps)) {	//만약 키값중 access_token이 존재한다면
					Map<String, String> profileMaps = bo.getUserProfile(tokenMaps.get("access_token"));
					//해당 데이터가 데이터베이스에 존재하는지 체크.
					
					String id = profileMaps.get("id");
					int hasMemberResult = loginService.hasSnsMember(id);
					log.info("hasMemberResult : " + hasMemberResult);
					
					if(hasMemberResult == 0) {
						LoginMemberVO vo = new LoginMemberVO();
						vo.setUser_id(id);
						vo.setPlatform_type("NAVER");
						vo.setAccess_token(tokenMaps.get("access_token"));
						vo.setRefresh_token(tokenMaps.get("refresh_token"));
						String result = loginService.insertMember(vo);
						log.info(result == null ? "정상 저장" : "비정상 처리"); 
						
					} else log.info("이미 존재하는 데이터 입니다");
					
				} else throw new Exception(Utils.MapToString(tokenMaps)); //존재하지 않다면 에러처리 
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e);
		}
		return "";
	}
	
	@RequestMapping("testCallback.do")
	public void testback(NaverBO bo) {
		String str = "ayIM3pipAJ1O1KQrI4yipzDEoT0WApBPtBg2meJTMN6JXGisqeo1kglZzJwGkr1oBcIFs3fqsqjR3lrow0eaCOQ081snp8PiiYDLRtvU1f0vYk8eQipKYu075VzisqtBfDTtHa";
		String getRefreshTokenURL = bo.getRefreshToken(str);
		String responseJson = Utils.httpJsonReader(getRefreshTokenURL, new HashMap<String,String>());
		log.info(responseJson);
	}
	
}
