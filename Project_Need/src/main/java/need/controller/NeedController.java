

package need.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import need.VO.NeedVO;
import need.service.NeedService;

@Controller
public class NeedController {
	
	@Resource(name= "needService")
	NeedService needService;

	@RequestMapping("declation.do")
	public String test() throws Exception {
		return "jsp/public/declation";
	};
	
	
	@RequestMapping("testSave.do")
	public String testsave(NeedVO vo)throws Exception{
		System.out.println(vo.getA());
		System.out.println(vo.getB());
		System.out.println(vo.getC());
		String result = needService.insertTest(vo);
		if(result != null) ;
		return "test/tests";
	}

	
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

	
	
	
	
	

	@RequestMapping("TestPage.do")
	public String testPage() throws Exception{
		//return "jsp/public/TestPage";
		return "jsp/admin/bomin/AdminQuestionWrite";
	}
	
	@RequestMapping("testmin.do")
	public String testmin ()throws Exception{
		return "jsp/user/minjeong/memberJoin";
	}
	
	@RequestMapping("filetest.do")
	@ResponseBody
	public String testcontent(MultipartHttpServletRequest multiRequest,NeedVO vo) throws Exception{
		
		
		List<MultipartFile> list = new ArrayList<>();
		if(multiRequest.getFiles("file") != null ) {
			list = multiRequest.getFiles("file");
		}
		
		List<String> uuid = (vo.getUuid() != null ? Arrays.asList(vo.getUuid()) : new ArrayList<>());
		
		String content = vo.getContent();

			System.out.println("사진 개수 : " + list.size());
			System.out.println("UUID 개수 : " + (uuid == null ? "null" : uuid.size()));
			System.out.println("content : " + content);

		if(uuid.size() >0) {

			String folderName = "upload";
			File folder = new File("C:/"+folderName);
			if(!folder.exists()) folder.mkdir();
			
			int uuidCnt = 0;
			for(MultipartFile file : list) {
					System.out.println(file.getOriginalFilename());
					String ext = FilenameUtils.getExtension(file.getOriginalFilename());
				if(!(ext.equals("png") || ext.equals("jpeg") ||ext.equals("jpg") ||ext.equals("gif") ||ext.equals("svg"))) continue;
				
				file.transferTo(new File(folder.getPath()+"/"+uuid.get(uuidCnt)+"."+ ext));
				uuidCnt++;
			}

		}

		return "ok";
	}

}