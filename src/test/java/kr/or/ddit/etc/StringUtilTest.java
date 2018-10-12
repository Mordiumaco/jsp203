package kr.or.ddit.etc;

import static org.junit.Assert.*;

import javax.swing.text.html.parser.DTD;
import javax.swing.text.html.parser.Parser;

import org.junit.Test;

public class StringUtilTest {

	@Test
	public void test() {
		/***Given***/
		String contentDisposition = "profile Content-disposition : form-data; name=\"profile\"; filename=\"brown.png\"";

		/***When***/
		int index = contentDisposition.indexOf("filename=")+10;
		String answer = (String)contentDisposition.subSequence(index, contentDisposition.lastIndexOf("\""));
		System.out.println(answer);
		
		String fileName = answer;
		
		//교수님 방법
		//logic
		
		/*String[] splits = contentDisposition.split(";");
		for(String str : splits){
			if(str.indexOf("filename=") >= 0){
				//filenmae= "brown.png"
				System.out.println(str.length());
				System.out.println(str.substring(11, 20));
				fileName = str.substring(10, str.lastIndexOf("\""));
				System.out.println(fileName);
			}
		}*/
		
		
		/***Then***/
		
		assertEquals("brown.png", fileName);
	}

}
