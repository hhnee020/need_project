package need.service;

import java.util.List;

import need.VO.LoginMemberVO;

public interface LoginService {
	String insertMember(LoginMemberVO vo) throws Exception;
	int updateMember(LoginMemberVO vo) throws Exception;
	int deleteMember(LoginMemberVO vo) throws Exception;
	int totalMember(LoginMemberVO vo) throws Exception;
	int hasSnsMember(String id) throws Exception;
	List<?> selectMember(LoginMemberVO vo) throws Exception;
	List<?> testselect()throws Exception;
}
