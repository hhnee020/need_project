

package need.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import need.VO.NeedVO;
import need.service.NeedService;

@Controller
public class NeedController {
	
	@Resource(name= "needService")
	NeedService needService;


	
	/*거래 , 동네 게시판 리스트  */
	@RequestMapping("boardList.do")
	public String selectBoardList(NeedVO vo , Model model)throws Exception{
		
		return "jsp/user/hani/boardList";
	}
	
	/*상세 페이지 */
	@RequestMapping("TownboardDetail.do")
	public String selectTownboardDetail(NeedVO vo , Model model)throws Exception{
		
		return "jsp/user/hani/communityDetail";
	}
	
	@RequestMapping("MarketboardDetail.do")
	public String selectMarketboardDetail(NeedVO vo , Model model)throws Exception{
		
		return "jsp/user/hani/sellDetail";
	}
	
	/* 글 쓰기 */
	
	@RequestMapping("MarketboardWrite.do")
	public String insertMarketboardWrite(NeedVO vo , Model model)throws Exception{
		
		return "jsp/user/hani/marketBoardWrite";
	}

	@RequestMapping("TownboardWrite.do")
	public String insertTowntboardWrite(NeedVO vo , Model model)throws Exception{
		
		return "jsp/user/hani/townBoardWrite";
	}

	
	
	

}
