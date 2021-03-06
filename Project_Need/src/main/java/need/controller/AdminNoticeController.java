

package need.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import need.service.NeedService;

@Controller
public class AdminNoticeController {

	@Resource(name= "needService")
	NeedService needService;

		/* 어드민 공지사항 등록   */
	@RequestMapping("adminNoticeSubmit.do")
	public String insertadminNotice() {
		
		return "jsp/admin/hani/adminNoticeSubmit";
	}
	/* 어드민 공지사항 수정   */
	@RequestMapping("adminNoticeModify.do")
	public String updateadminNotice() {
		
		return "jsp/admin/hani/adminNoticeModify";
	}
	
	
	/* 어드민 공지사항 리스트    */
	@RequestMapping("adminNoticeList.do")
	public String adminNoticeList()throws Exception{
		
		return "jsp/admin/hani/adminNotice";
	}
	
	/* 어드민 공지사항 삭제     */
	@RequestMapping("deleteadminNotice.do")
	public String deleteadminNotice()throws Exception{
		
		return "jsp/admin/hani/adminNoticeDelete";
	}
	

	
	
}
