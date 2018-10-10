package kr.or.ddit.db;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class UserServiceTest {
	
	private UserServiceInf service;
	
	//junit 실행주기
	//@BeforeClass 어노테이션이 적용된 메서드 실행(최초 1회 실행) 단 static 메서드로 선언
	//@Before 어노테이션이 적용된 메서드 실행(테스트 메서드 실행전 실행)
	//@Test
	//@After 어노테이션이 적용된 메서드 실행(테스트 메소드 실행후 실행) 
	//@AfterClass 어노테이션이 적용된 메서드 실행(최초 1회), 단 static 메서드로 선언
	
	//beforeClass
	//before --> selectUserAll --> after
	//before --> selectUserAll --> after
	//before --> selectUserAll --> after
	//afterClass
	
	@BeforeClass
	public static void beforeClass(){
		System.out.println("beforeClass");
	}
	
	@AfterClass
	public static void AfterClass(){
		System.out.println("afterClass");
	}
	
	@Before
	public void before(){
		System.out.println("before");
		service = new UserService();
	}
	
	@After
	public void after(){
		System.out.println("after");
	}
	
	
	//운영 메서드이름+Test로 보통 이름을 짓는다
	@Test
	public void selectUserAll() {
		/***Given***/

		/***When***/
		List<JSPUserVO> user_list = service.selectUserAll();
		
		System.out.println(user_list.get(0).getName());
		/***Then***/

		assertEquals(5, user_list.size());
	}
	
	@Test
	public void selectUserTest() {
		/***Given***/
		
		/***When***/
		JSPUserVO user= service.selectUser("brown");
		
		/***Then***/
		assertNotNull(user);
		assertEquals("brown", user.getUserId());
		assertEquals("brownpass", user.getPassword());
	}
	
	@Test
	public void selectUserByUserVO() {
		/***Given***/
		JSPUserVO user_input = new JSPUserVO();
		user_input.setUserId("brown");
		
		/***When***/
		JSPUserVO user= service.selectUserByUserVO(user_input);
		
		/***Then***/
		assertNotNull(user);
		assertEquals("brown", user.getUserId());
	}

}
