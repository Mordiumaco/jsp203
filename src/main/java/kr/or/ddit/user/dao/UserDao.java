package kr.or.ddit.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.util.model.PageVo;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserDao implements UserDaoInf{
	
	//jspuser 테이블 데이터 전체 조회 쿼리 
	//select query id : selectUserAll
	
	
	public List<JSPUserVO> selectUserAll(){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		return session.selectList("userSQL.selectUserAll");
	}
	
	public JSPUserVO selectUser(String userId){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		
		return session.selectOne("userSQL.selectUser", userId);
	}
	
	public JSPUserVO selectUserByUserVO(JSPUserVO user){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		
		return session.selectOne("userSQL.selectUserByUserVO", user);
	}

	@Override
	public List<JSPUserVO> selectUserPageList(PageVo page) {
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		//selectOne: 데이터가 한건일때
		//selectList: 여러건의 데이터를 조회 
		//메서드 인자: 문자열 = 네임스페이스(모듈명).쿼리아이디
		
		return session.selectList("userSQL.selectUserPageList", page);
		
	}
}
