package kr.or.ddit.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.dao.UserDaoInf;
import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.util.model.PageVo;

public class UserService implements UserServiceInf{
	private static PageVo page;
	
	public PageVo getPage() {
		return page;
	}

	public void setPage(PageVo page) {
		this.page = page;
	}

	UserDaoInf dao = new UserDao();
	
	
	public List<JSPUserVO> selectUserAll(){
		return dao.selectUserAll();
	}
	
	public JSPUserVO selectUser(String userId){
		return dao.selectUser(userId);
	}
	
	public JSPUserVO selectUserByUserVO(JSPUserVO user){
		return dao.selectUserByUserVO(user);
	}
	
	/**
	* Method : selectUserPageList
	* 작성자 : pc20
	* 변경이력 :
	* @param page
	* @return
	* Method 설명 : 사용자 페이징 조회
	*/
	@Override
	public Map<String, Object> selectUserPageList(PageVo page) {
		//교수님 방식
		UserDao userDao = new UserDao();
		
		//페이지에 해당하는 유저 리스트(1~10건 사이) 
		List<JSPUserVO> userList = userDao.selectUserPageList(page);
		
		//페이지 내비게이션을 위한 전체 유저 리스트 조회
		int totalUserCnt = userDao.getUserCnt();
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("userList", userList);
		resultMap.put("pageCnt", (int)Math.ceil((double)totalUserCnt/page.getPageSize()));
		
		return resultMap;
	}
	
	/**
	* Method : getUserCnt
	* 작성자 : pc20
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 등록
	*/
	@Override
	public int insertUser(JSPUserVO user){
		return dao.insertUser(user);
	}

	@Override
	public int updateProfile(JSPUserVO user) {
		return dao.updateProfile(user);
	}
	
}	
