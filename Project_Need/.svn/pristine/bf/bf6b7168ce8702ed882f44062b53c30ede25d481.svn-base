/**
 * 
 */
package need.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author bomin
 * 
 * 인덱스 페이지
 * 로그인 페이지
 * 신고 작성 페이지
 * 아이디 찾기 페이지
 * 비밀번호 찾기 페이지
 * 
 * 관리자 페이지 로 이동
 *
 */

@Controller
public class UserPublicController {

	
	@RequestMapping("index.do")
	public String index() throws Exception {
		return "jsp/public/indexPage";
	}
	
	
	@RequestMapping("login.do")
	public String loginPage() throws Exception {
		return "jsp/public/login";
	}
	
	@RequestMapping("adminPage.do")
	public String adminPage() throws Exception {
		return "jsp/public/AdminPage";
	}
	
	//신고 작성 팝업창
	@RequestMapping("declation.do")
	public String declation() throws Exception {
		return "jsp/public/declation";
	}
	
	//아이디 찾기 팝업창
	@RequestMapping("searchId.do")
	public String searchId() throws Exception {
		return "jsp/user/bomin/SearchId";
	}
	
	//비밀번호 찾기 팝업창
	@RequestMapping("searchPw.do")
	public String searchPw() throws Exception {
		return "jsp/user/bomin/SearchPw";
	}
}
