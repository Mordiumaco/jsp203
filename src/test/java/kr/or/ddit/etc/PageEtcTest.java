package kr.or.ddit.etc;

import static org.junit.Assert.*;

import org.junit.Test;

public class PageEtcTest {

	@Test
	public void test() {
		/***Given***/
		int totalUserCnt = 110;
		int pageSize = 10;

		/***When***/
		int naviSize = (int)Math.ceil((double)totalUserCnt/pageSize);

		/***Then***/
		assertEquals(11,naviSize);
	}

}
