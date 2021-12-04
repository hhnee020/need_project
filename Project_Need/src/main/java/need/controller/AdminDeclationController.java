/**
 * 
 */
package need.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author bomin
 *
 * jsp >admin > bomin > AdminDeclation , Detail
 * 목록, 상세보기
 * 관리자 페이지 > 신고 관리
 */
@Controller
public class AdminDeclationController {
	
	//유저들이 작성한 신고 목록
	@RequestMapping("aDeclationList.do")
	public String adminDeclationList() throws Exception{
		return "jsp/admin/bomin/AdminDeclation";
	}
	
	//유저들이 작성한 신고글 상세보기
	@RequestMapping("aDeclationDetail.do")
	public String adminDeclationDetail() throws Exception{
		return "jsp/admin/bomin/AdminDeclationDetail";
	}

}
