package kr.or.ddit.sum;

import static org.junit.Assert.*;

import org.junit.Test;

import circulator.CalculationLogic;

public class CalculationLogicTest {
	
	
	//1 ~ 10까지의 합
	@Test
	public void sumBetweenTwoNumbers() {
		CalculationLogic logic = new CalculationLogic();
		int start = 1;
		int end = 10;
		
		int sum = logic.sumBetweenTwoNumbers(start, end);
		
		assertEquals(55, sum);
	}
	
	
	@Test
	public void sumBetweenTwoNumbers2() {
		CalculationLogic logic = new CalculationLogic();
		
		int start = 10;
		int end = 1;
		
		
		int sum = logic.sumBetweenTwoNumbers(start, end);
		
		assertEquals(55, sum);
	}
}
