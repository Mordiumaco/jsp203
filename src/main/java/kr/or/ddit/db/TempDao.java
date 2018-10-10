package kr.or.ddit.db;

import java.util.List;
import java.util.Map;

import kr.or.ddit.user.model.JSPUserVO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class TempDao {
	
	public Map<String, Object> getTemp(){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		return session.selectOne("temp.temp");
	}
	
	
	public List<JSPUserVO> selectUserAll(){
		
		SqlSessionFactory factory = SQLFactoryBuilder.getSqlSessionFactory();
		
		SqlSession session = factory.openSession();
		
		return session.selectList("userSQL.selectUserAll");
	}
	
}
