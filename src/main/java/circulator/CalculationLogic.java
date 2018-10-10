package circulator;

public class CalculationLogic {
	
	public static void main(String[] args) {
		CalculationLogic logic = new CalculationLogic();
		int start = 1;
		int end = 10;
		
		int sum = logic.sumBetweenTwoNumbers(start, end);
		
		System.out.println(sum);
	}
	
	
	public int sumBetweenTwoNumbers(int start, int end) {

		int sum = 0;
		
		int min = Math.min(start, end);
		int max = Math.max(start, end);
		
		for(int i = min; i <= max; i++){
			sum += i;
		}
		
		return sum;
	}

}
