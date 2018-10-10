package kr.or.ddit.user.service;

import java.util.List;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.util.model.PageVo;

public interface UserServiceInf {
	
	public List<JSPUserVO> selectUserAll();
	
	public JSPUserVO selectUser(String userId);
	
	public JSPUserVO selectUserByUserVO(JSPUserVO user);
	
	public List<JSPUserVO> selectUserPageList(PageVo page);
}
