package kr.or.ddit.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.tomcat.util.http.Cookies;

import kr.or.ddit.db.TempDao;
import kr.or.ddit.db.TempService;
import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

@WebServlet("/JSPLoginServlet")
public class JSPLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember-me");
		//remember-me 파라미터 받아서 sysout으로 출력
		
		//remember == null: 아이디 기억 사용 안함
		//
		if(remember == null){
			Cookie[] cookies = request.getCookies();
			
			for(Cookie cookie : cookies){
				//cookie 이름이 remember, userId 일경우 maxage 
				//-1로 설정하여 쿠키를 유효하지 않도록 설정한다. 
				//System.out.println(cookie.getName());
				if(cookie.getName().equals("userId")||cookie.getName().equals("remember")){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
			
		//remember != null 아이디 기억 사용
		}else{
			//response 객체에 쿠키를 저장
			Cookie cookie = new Cookie("remember", "Y");
			Cookie userIdCookie = new Cookie("userId", id);
			
			//쿠키의 유지시간을 정해준다. setMaxAge(초); 
			//cookie.setMaxAge(60*60*24);
			
			response.addCookie(cookie);
			response.addCookie(userIdCookie);
			
		}
		
		
		response.setCharacterEncoding("utf-8");
		
		UserServiceInf service = new UserService();
		
		//1. 사용자 아이디, 비밀번호를 request객체에서 받아온다. 
		//2. db에서 조회해온 아이디, 비밀번호를 체크를 한다. 
		//db에서 조회한 사용자 비밀번호가 파라미터로 전송된 비밀번호와 동일한지 비교
		//3. session에 사용자 정보등록(as-is: 임의의 userVo 등록 to-be:db에서 조회한 userVo) 
		
		
		JSPUserVO user = service.selectUser(id);
		
		
		if(user != null){
			if(id.equals(user.getUserId())&&password.equals(user.getPassword())){
				
				HttpSession session = request.getSession();
				session.setAttribute("S_USER", user);
				
				RequestDispatcher rd = request.getRequestDispatcher("/main.jsp");
				rd.forward(request, response);
				return;
			}
			
			response.sendRedirect("/jsp_login.jsp");
		}else{
			response.sendRedirect("/jsp_login.jsp");
		}
	}
}
