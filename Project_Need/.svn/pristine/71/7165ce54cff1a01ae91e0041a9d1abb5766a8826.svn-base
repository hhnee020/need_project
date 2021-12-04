/**
 * 
 */
package need.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author bomin
 *
 * 관리자 페이지 > 상담문의 관리
 * jsp >admin > bomin > AdminQuestion
 * List(유저가 문의 작성시 이쪽으로 글이 보여짐, (UserQuestionWrite))
 * Page(상담문의 메인페이지) , 
 * Wrtie(자주 하는 질문 작성 페이지)
 * 
 * A_Question Write 작성 시
 * jsp > public > QuestionList에 등록.
 */
@Controller
public class QuestionController {
	
	//자주 하는 질문으로 갈지,
	@RequestMapping("aQuestionPage.do")
	public String adminQuestionPage() throws Exception{
		return "jsp/admin/bomin/AdminQuestionPage";
	}

	//유저에게 온 질문을 볼 수 있는 목록
	@RequestMapping("aQuestionList.do")
	public String adminQuestionList() throws Exception{
		return "jsp/admin/bomin/AdminQuestionList";
	}
	
	//어드민의 자주하는 QnA 작성
	@RequestMapping("aQuestionWrite.do")
	public String adminQuestionWrite() throws Exception{
		return "jsp/admin/bomin/AdminQuestionWrite";
	}
	

	//어드민의 자주하는 QnA 작성
	@RequestMapping("questionList.do")
	public String publicQuestionList() throws Exception{
		return "jsp/public/QuestionList";
	}
	

	//유저 본인이 작성한 질문목록
	@RequestMapping("uQuestionList.do")
	public String userQuestionList() throws Exception{
		return "jsp/user/bomin/MyQuestionList";
	}
	
	//유저 본인이 작성한 질문 상세 (Detail)
	@RequestMapping("uQuestionView.do")
	public String userQuestionView() throws Exception{
		return "jsp/user/bomin/MyQuestionView";
	}
	
	//유저의 질문 작성
	@RequestMapping("uQuestionWrite.do")
	public String userQuestionWrite() throws Exception{
		return "jsp/user/bomin/UserQuestionWrite";
	}
}
