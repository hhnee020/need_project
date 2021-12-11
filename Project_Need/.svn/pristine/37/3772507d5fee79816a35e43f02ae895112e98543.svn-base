package need.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import need.DAO.LoginDAO;
import need.VO.LoginMemberVO;
import need.service.LoginService;

@Service("loginService")
public class LoginImpl implements LoginService{

	@Resource(name ="loginDAO")
	LoginDAO loginDAO;
	
	@Override
	public String insertMember(LoginMemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.insertMember(vo);
	}

	@Override
	public int updateMember(LoginMemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.updateMember(vo);
	}

	@Override
	public int deleteMember(LoginMemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.deleteMember(vo);
	}

	@Override
	public int totalMember(LoginMemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.totalMember(vo);
	}
	
	@Override
	public int hasSnsMember(String id) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.hasSnsMemeber(id);
	}

	@Override
	public List<?> selectMember(LoginMemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.selectMember(vo);
	}

	@Override
	public List<?> testselect() throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.testselect();
	}


}
