package need.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import need.VO.NeedVO;

@Controller
public class TestController {

	
	@RequestMapping("testSave.do")
	public String testsave(NeedVO vo)throws Exception{
		System.out.println(vo.getA());
		System.out.println(vo.getB());
		System.out.println(vo.getC());
		return "test/tests";
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
