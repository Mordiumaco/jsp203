package kr.or.ddit.user.view;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;
import kr.or.ddit.util.StringUtil;

/**
 * Servlet implementation class UserUpdateServelt
 */
@MultipartConfig(maxFileSize = 1024*1024*5, maxRequestSize=1024*1024*5*5)
@WebServlet("/userUpdate")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 받아오기
		request.setCharacterEncoding("utf-8");


		//-- 프로파일 생성 -----------------------------------------------------------------------------
		Part part = request.getPart("profile");
		//Content-disposition 헤더정보
		//파일과 관련된 부가정보
		System.out.println("profile Content-disposition : "+part.getHeader("Content-disposition"));

		String contentDisposition = part.getHeader("Content-disposition");

		String fileName = StringUtil.getFileNameFromHeader(contentDisposition);

		//url정보를 실제 파일 경로로 변경
		String path = getServletContext().getRealPath("/profile");

		//파일 쓰기
		//File.separator 을 하면 어떤 OS든 유연하게 작동한다.
		part.write(path+File.separator+fileName);
		part.delete(); //파일 업로드 과정에서 사용한 디스크 임시 영역을 정리
		//-- 프로파일 생성 끝 -----------------------------------------------------------------------------


		String userId = request.getParameter("userId");
		String profile = "/profile/"+fileName;

		//파라미터를 userVo
		JSPUserVO userVo = new JSPUserVO();
		userVo.setUserId(userId);
		userVo.setProfile(profile);

		UserServiceInf userService = new UserService();
		int updateCnt = userService.updateProfile(userVo);

		//사용자 리스트로 이동
		//(redirect : 서버 상태가 변경되므로 사용자가 새로고침을 통해 재요청 시 중복 등록되는 현상을 막는다.)
		response.sendRedirect("/userPageList?page=1&pageSize=10");

	}

}
