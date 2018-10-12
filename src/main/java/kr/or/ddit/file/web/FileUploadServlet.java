package kr.or.ddit.file.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//파일을 받기 위해서는 MultipartContfig를 설정해줘야 한다.
//maxFileSize는 바이트 단위이다.
//1024*1024*5 = 5MB
@MultipartConfig(maxFileSize = 1024*1024*5, maxRequestSize=1024*1024*5*5)
@WebServlet("/fileUpload")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	
	//fileUpload.jsp
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/fileupload/fileUpload.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.getReader();
		//일반 text 파라미터 : request.getParameter("파라미터명");
		//파일 : request.getPart("파라미터명");
		
		
		System.out.println(request.getContentType());
		System.out.println("userID :" + request.getParameter("userId"));
		//System.out.println("profile : "+ request.getParameter("profile"));
		
		//profile part
		Part profilePart = request.getPart("profile");
		
		System.out.println("profile part : "+profilePart.getContentType());
		
		//Content-disposition 헤더정보
		//파일과 관련된 부가정보
		System.out.println("profile Content-disposition : "+profilePart.getHeader("Content-disposition"));
		
		String contentDisposition = profilePart.getHeader("Content-disposition");
		String[] splits = contentDisposition.split(";");
		String fileName = null;
		for(String str : splits){
			if(str.indexOf("filename=") >= 0){
				//filenmae= "brown.png"
				/*System.out.println(str.length());
				System.out.println(str.substring(11, 20));*/
				fileName = str.substring(11, str.lastIndexOf("\""));
				System.out.println(fileName);
			}
		}
		
		//파일 쓰기
		profilePart.write("D:\\A_TeachingMaterial\\6.JspSrpgin\\upload\\"+fileName);
		profilePart.delete(); //파일 업로드 과정에서 사용한 디스크 임시 영역을 정리
		
	}

}
