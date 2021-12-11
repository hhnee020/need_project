package need.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import need.VO.LoginMemberVO;

@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO{

	public String insertMember(LoginMemberVO vo) {
		// TODO Auto-generated method stub
		return (String) insert("loginDAO.insertMember",vo);
	}

	public int updateMember(LoginMemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteMember(LoginMemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int totalMember(LoginMemberVO vo) {
		// TODO Auto-generated method stub
		return (int) select("loginDAO.totalMember",vo);
	}

	public int hasSnsMemeber(String id) {
		// TODO Auto-generated method stub
		return (int) select("loginDAO.hasSnsMember",id);
	}

	public List<?> selectMember(LoginMemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<?> testselect() {
		// TODO Auto-generated method stub
		return list ("loginDAO.testselect");
	}

}
