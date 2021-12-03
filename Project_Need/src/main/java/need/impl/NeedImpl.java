package need.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import need.DAO.NeedDAO;
import need.VO.NeedVO;
import need.service.NeedService;

@Service("needService")
public class NeedImpl implements NeedService{

	@Resource( name= "needDAO")
	NeedDAO needDAO;

	@Override
	public String insertTest(NeedVO vo) throws Exception {
		// TODO Auto-generated method stub
		return needDAO.insertTest(vo);
	}

	@Override
	public String  insertadminNotic(NeedVO vo) {
		// TODO Auto-generated method stub
		return needDAO.insertadminNotice(vo);
	}

	@Override
	public int updateadminNotice(NeedVO vo) {
		// TODO Auto-generated method stub
		return  needDAO.updateadminNotice(vo);
	}

	@Override
	public List<?> adminNoticeList(NeedVO vo) throws Exception {
		// TODO Auto-generated method stub
		return (List<?>) needDAO.adminNoticeList(vo);
	}

	@Override
	public int deleteadminNotice(NeedVO vo) throws Exception {
		// TODO Auto-generated method stub
		return needDAO.deleteadminNotice(vo);
	}

	
	



}
