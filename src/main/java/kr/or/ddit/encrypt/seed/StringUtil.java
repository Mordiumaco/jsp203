package kr.or.ddit.encrypt.seed;

public class StringUtil {

	/**
	 * (length - str.length) 만큼 앞에 0을 추가한다.
	 * @param str
	 * @param length
	 * @return
	 */
	public static String addZero (String str, int length) {
		String temp = "";
		for (int i = str.length(); i < length; i++)
			temp += "0";
		temp += str;
		return temp;
	}

	/**
	* Method : isEmpty
	* 작성자 : pc20
	* 변경이력 :
	* @param str
	* @return
	* Method 설명 :
	*/
	public static boolean isEmpty(String str) {
		if(str == null || str.length() == 0) {
			return true;
		}else {
			return false;
		}
	}
	
}