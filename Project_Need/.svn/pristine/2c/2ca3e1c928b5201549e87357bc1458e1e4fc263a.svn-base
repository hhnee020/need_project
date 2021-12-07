package need.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	//회원가입 페이지
	@RequestMapping("memberJoin.do")
	public String memberJoin() throws Exception{
		return "jsp/user/minjeong/memberJoin";
	}
	//회원가입동의 약관 
	@RequestMapping("register.do")
	public String register() throws Exception{
		return "jsp/user/minjeong/register";
	}
	
	//내정보 수정
	@RequestMapping("myInfo.do")
	public String myInfo() throws Exception{
		return "jsp/user/minjeong/myInfo";
	}
	
	//나의 활동내역
	@RequestMapping("myAct.do")
	public String myAct() throws Exception{
		return "jsp/user/minjeong/myAct";
	}
	//다른유저 활동내역
	@RequestMapping("memberAct.do")
	public String memberAct() throws Exception{
		return "jsp/user/minjeong/memberAct";
	}		
	
}
