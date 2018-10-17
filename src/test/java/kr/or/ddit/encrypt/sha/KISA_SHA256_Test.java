package kr.or.ddit.encrypt.sha;

import static org.junit.Assert.*;

import org.junit.Test;

public class KISA_SHA256_Test {

	/**
	* Method : encryptTest
	* 작성자 : pc20
	* 변경이력 :
	* Method 설명 : sha256 encrypt 테스트
	*/
	@Test
	public void encryptTest() {
		/***Given***/
		String pass = "brownpass";
		String pass1 = "brownpast";
		
		/***When***/
		String encrypt = KISA_SHA256.encrypt(pass);
		String encrypt1 = KISA_SHA256.encrypt(pass1);
		System.out.println(encrypt);
		System.out.println(encrypt1);
		
		/***Then***/
		assertEquals("f01471c38113db263f9a532d8b6c054af31bf653aeea92d1c284cdd022b9", encrypt);
		assertEquals("9468e32e2dd290a6b88c2dd4bb5457563c592225d69c73dcb85c9ab5ef9a1e", encrypt1);
		
	}
}
