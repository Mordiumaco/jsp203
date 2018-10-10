package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	
	//service --> request.getMethod() : "POST", "GET" --> doGet, doPost
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		
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
		
		for(String str: req.getParameterValues("id")){
			pw.println("id: "+str+"<br/>");
		}
		
		pw.println("pw: "+req.getParameter("password"));
		pw.println("		</body>");
		pw.println("	</html>");
		pw.flush();
		pw.close();
		
	}
	
}
