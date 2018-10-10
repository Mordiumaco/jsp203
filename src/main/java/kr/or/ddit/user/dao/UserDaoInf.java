package kr.or.ddit.user.dao;

import java.util.List;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.util.model.PageVo;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public interface UserDaoInf {
	
	public List<JSPUserVO> selectUserAll();
	
	public JSPUserVO selectUser(String userId);
	
	public JSPUserVO selectUserByUserVO(JSPUserVO user);
	
	public List<JSPUserVO> selectUserPageList(PageVo page);
}
