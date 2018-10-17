package kr.or.ddit.encrypt.seed;

import static org.junit.Assert.*;

import org.junit.Test;

public class KISA_SEED_CBC_Test {

	/**
	* Method : EncryptTest
	* 작성자 : pc20
	* 변경이력 :
	* Method 설명 : seed
	*/
	@Test
	public void EncryptTest() {
		
		/***Given***/
		String pass = "brownpass";

		/***When***/
		//암호화 하기
		String encrypt = KISA_SEED_CBC.Encrypt(pass);
		
		//암호화된 문장을 복호화 해보기(월래의 패스형태로 되돌린다는 의미)
		String decrypt = KISA_SEED_CBC.Decrypt(encrypt);
		
		/***Then***/
		assertEquals("5207bbf01d00451c23800ae909470f26", encrypt);
		assertEquals(decrypt, pass);
	}

}
