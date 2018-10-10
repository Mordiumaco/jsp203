package kr.or.ddit.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.user.model.UserVo;

public class LoginServlet extends HttpServlet {

	
	private final String USER_ID = "브라운";
	private final String PASSWORD = "pass1234";
	
	
	
	// service --> request.getMethod() : "POST", "GET" --> doGet, doPost
	
	//server.xml에서 uft-8 encoding을 넣어주던가
	//req
	/*
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		req.getParameterValues("id");
		req.getParameter("password");
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter pw = resp.getWriter();
		
		pw.println("<!DOCTYPE html>");
		pw.println("	<html>");
		pw.println("		<head>");
		pw.println("			<meta charset=\"UTF-8\">");
		pw.println("			<title>Insert title here</title>");
		pw.println("		</head>");
		pw.println("		<body>");

		for (String str : req.getParameterValues("id")) {
			pw.println("id: " + str + "<br/>");
		}
		pw.println("pw: " + req.getParameter("password"));

		pw.println("		</body>");
		pw.println("	</html>");
		pw.flush();
		pw.close();
	}*/
	
	//jsp에 해서 만약 부르는 방식이 다르더라도 doGet()를 doPost 안에서 부르면 된다.
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		
		//1. 사용자 아이디, 비밀번호를 request객체에서 받아온다. 
		//2. db에서 조회해온 아이디, 비밀번호를 체크를 한다. 
		//3-1. 일치할 경우 main.jsp 로 이동
		//3-2. 불일치 할 경우 login.jsp 로 이동
		
		//1
		String userID = req.getParameter("id");
		String password = req.getParameter("password");
		
		//2 상수로 대체 위를 참고 할 것  -->db 대신 상수로 대체
		
		//jsp 관련 폴더는 webapp부터 시작한다. 잊지말자
		//3-1 main.jsp 로 이동
		if(USER_ID.equals(userID) && PASSWORD.equals(password)){
			//resp.sendRedirect("main.jsp?id="+id1+"&password="+password);
			
			
			//dispatch
			/*RequestDispatcher rd = req.getRequestDispatcher("main.jsp");
			
			rd.forward(req,resp);*/
			
			
			//1.session에 사용자 정보 설정 
			UserVo userVo = new UserVo();
			userVo.setUserID(userID);
			userVo.setName("브라운");
			userVo.setAlias("곰");
			userVo.setBirth(new Date());
			
			HttpSession session = req.getSession();
			session.setAttribute("userVo", userVo);
			
			RequestDispatcher rd = req.getRequestDispatcher("main.jsp");
			rd.forward(req,resp);
			
			//2.main.jsp
			//body 영역에 
			//이름[별명]님 안녕하세요
			
			
			
		}else{
		//3-2 login.jsp	
			resp.sendRedirect("login.jsp");
		}
		
		
	}

	

}
