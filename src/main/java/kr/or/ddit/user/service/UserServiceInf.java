package kr.or.ddit.user.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.util.model.PageVo;

public interface UserServiceInf {
	
	public List<JSPUserVO> selectUserAll();
	
	public JSPUserVO selectUser(String userId);
	
	public JSPUserVO selectUserByUserVO(JSPUserVO user);
	
	
	/**
	* Method : selectUserPageList
	* 작성자 : pc20
	* 변경이력 :
	* @param page
	* @return
	* Method 설명 : 사용자 페이징 조회
	*/
	public Map<String, Object> selectUserPageList(PageVo page);
	
	/**
	* Method : getUserCnt
	* 작성자 : pc20
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 등록
	*/
	int insertUser(JSPUserVO user);
	
	public int updateProfile(JSPUserVO user);
}
