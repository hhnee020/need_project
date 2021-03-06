package need.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminBoardManageController {
	/*
	 * 차은성
	 * admin 게시판 관리 Controller
	 */
	
	@RequestMapping("adBoardList.do")
	public String selectadBoardList(HttpServletRequest request)throws Exception{
		
		HttpSession session = request.getSession();
		if(session.getAttribute("name") == null) {
			session.setAttribute("name", "관리자쓰");
		} else {
			System.out.println(session.getAttribute("name"));
		}
		
		return "jsp/admin/eunseong/adBoard";
	}
	
	
}
