package kr.or.ddit.db;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.model.JSPUserVO;

import org.junit.Test;

public class DaoTest {

	@Test
	public void selectUserAll() {
		/***Given***/
		UserDao dao = new UserDao();

		/***When***/
		List<JSPUserVO> user_list = dao.selectUserAll();
		
		System.out.println(user_list.get(0).getName());
		/***Then***/

		assertEquals(5, user_list.size());
	}
	
	@Test
	public void selectUserTest() {
		/***Given***/
		UserDao dao = new UserDao();
		
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
		UserDao dao = new UserDao();
		JSPUserVO user_input = new JSPUserVO();
		user_input.setUserId("brown");
		
		/***When***/
		JSPUserVO user= dao.selectUserByUserVO(user_input);
		
		/***Then***/
		assertNotNull(user);
		assertEquals("brown", user.getUserId());
	}
}
