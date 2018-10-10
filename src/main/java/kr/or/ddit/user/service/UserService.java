package kr.or.ddit.user.service;

import java.util.List;

import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.dao.UserDaoInf;
import kr.or.ddit.user.model.JSPUserVO;
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

	@Override
	public List<JSPUserVO> selectUserPageList(PageVo page) {
		List<JSPUserVO> userList = selectUserAll();
		page.setPage(userList.size()/10+1);
		page.setPageSize(10);
		
		return dao.selectUserPageList(page);
	}
	
}	
