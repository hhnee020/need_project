package need.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {

	//회원목록
	@RequestMapping("memberList.do")
	public String memberList() throws Exception{
		return "jsp/admin/minjeong/memberList";
	}
	
	//회원정보 상세보기
	@RequestMapping("memberInfo.do")
	public String memberInfo() throws Exception{
		return "jsp/admin/minjeong/memberInfo";
	}

	//탈퇴회원 목록
	@RequestMapping("memberOut.do")
	public String memberOut() throws Exception{
		return "jsp/admin/minjeong/memberOut";
	}
	
}
