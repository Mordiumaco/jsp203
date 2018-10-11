package kr.or.ddit.db;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.dao.UserDaoInf;
import kr.or.ddit.user.model.JSPUserVO;

import org.junit.Before;
import org.junit.Test;

public class DaoTest {

	private UserDaoInf userDao;
	
	@Before
	public void setup(){
		userDao = new UserDao();
	}
	
	@Test
	public void selectUserAll() {
		/***Given***/
		UserDaoInf dao = userDao;

		/***When***/
		List<JSPUserVO> user_list = dao.selectUserAll();
		
		System.out.println(user_list.get(0).getName());
		/***Then***/

		assertEquals(105, user_list.size());
	}
	
	@Test
	public void selectUserTest() {
		/***Given***/
		UserDaoInf dao = userDao;
		
		/***When***/
		JSPUserVO user= dao.selectUser("brown");
		
		/***Then***/
		assertNotNull(user);
		assertEquals("brown", user.getUserId());
		assertEquals("brownpass", user.getPassword());
	}
	
	@Test
	public void selectUserByUserVO() {
		
		/***Given***/
		UserDaoInf dao = userDao;
		JSPUserVO user_input = new JSPUserVO();
		user_input.setUserId("brown");
		
		/***When***/
		JSPUserVO user= dao.selectUserByUserVO(user_input);
		
		/***Then***/
		assertNotNull(user);
		assertEquals("brown", user.getUserId());
	}
	
	
	/**
	* Method : getUserCnt
	* 작성자 : sem
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 전체 건수 조회
	*/
	@Test
	public void getUserCntTest() {
		/***Given***/
		
		/***When***/
		int totalUserCnt = userDao.getUserCnt();
		/***Then***/
		assertEquals(105, totalUserCnt);
		
	}
}
