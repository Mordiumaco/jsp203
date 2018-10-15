package kr.or.ddit.util;

import java.util.Arrays;

public class StringUtil {
	
	/**
	* Method : getFileNameFromHeader
	* 작성자 : pc20
	* 변경이력 :
	* @param contentDisposition
	* @return
	* Method 설명 : contentDisposition에서 filename을 추출
	*/
	public static String getFileNameFromHeader(String contentDisposition){
		String fileName = "";
		String[] splits = contentDisposition.split(";");
		for(String str : splits){
			if(str.indexOf("filename=") >= 0){
				fileName = str.substring(11, str.lastIndexOf("\""));
			}
		}
		
		return fileName;
	}

	public static String getCookie(String cookieString, String key) {
		
		/*int index = cookieString.indexOf(key)+key.length()+1;
		
		String result = cookieString.substring(index, cookieString.indexOf(";"));*/
		String[] splits = cookieString.split(";");
		
		System.out.println(Arrays.toString(splits));
		
		for(int i = 0; i < splits.length; i++){
			
			if(splits[i].startsWith(key)){
				System.out.println(splits[i]);
				return splits[i].substring(splits[i].indexOf(key)+key.length()+1);
			}
			
		}
		

		return null;
	}
	
}
