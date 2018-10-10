package kr.or.ddit.db;

import static org.junit.Assert.*;

import java.util.Map;

import org.junit.Test;

public class TempDaoTest {

	@Test
	public void tempDaoTest() {
		
		TempDao dao = new TempDao();
		
		Map<String, Object> temp = dao.getTemp();
		
		//만약에 소문자로 result 키값을 주고 싶다면 xml 에서 result 부분은 "" 더블 쿼테이션을 먹여주면 된다.
		assertEquals("X", temp.get("result"));
	}
	
	
		
}
