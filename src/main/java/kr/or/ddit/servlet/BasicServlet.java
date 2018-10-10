package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
* BasicServlet.java
*
* @author pc20
* @version 1.0
* @see
*
* <pre>
* << �����̷�(Modification Information) >>
*
* ������ ��������
* ------ ------------------------
* pc20 ���� ����
*
* </pre>
*/
public class BasicServlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		
	}
	
	@Override
	public void destroy() {
		
	}
	
	//��û http �޼��忡 ���� ����Ǵ� �޼ҵ尡 �޶�����. 
	//get : doGet
	//post: doPost
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		//HttpServletRequest : ��û�� ���� ���� 
		//HttpServletResponse : ���信 ���� ���� 
		
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter pw = resp.getWriter();
	/*	Date date = new Date();
		
		pw.print("hello. world");
		pw.print(date);*/
		
		//����1
		//date format�� �̿��Ͽ� 
		//��-��-�� �ð� �� ȭ�鿡 ��� 
		//simpleDate format ��� 
		
		
		Date testDate = new Date();
		SimpleDateFormat format = new SimpleDateFormat();
		format.applyPattern("yyyy-MM-dd hh:mm:ss");
		String test_time = format.format(testDate);
		
		/*pw.print("</br>");
		pw.print("hello. world");
		pw.print(test_time);*/
		

		/*pw.println("<!DOCTYPE html>");
		pw.println("	<html>");
		pw.println("		<head>");
		pw.println("			<meta charset=\"UTF-8\">");
		pw.println("			<title>Insert title here</title>");

		pw.println("		</head>");
		pw.println("		<body>");
		pw.println("<script type=\"text/javascript\">");

		pw.println("var date = new Date()");

		pw.println("document.getElementsByTagName(\"body\")[0].innerHTML = \"����ð� : \" +date");

		pw.println("</script>");
		pw.println("</body>");
		pw.println("</html>");*/
		
		
		
		
		
		
		
		pw.println("<!DOCTYPE html>");
		pw.println("	<html>");
		pw.println("		<head>");
		pw.println("			<meta charset=\"UTF-8\">");
		pw.println("			<title>Insert title here</title>");

		pw.println("		</head>");
		pw.println("		<body>");
		pw.println("				Hello, world");
		pw.println("				<br>"+test_time);
		
		pw.println("		</body>");
		pw.println("	</html>");
		pw.flush();
		pw.close();

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	}
	
	
	
}	


// ���� �ڷ� : index.html --> url 
// ���� �ڷ� : servlet --> url mapping ���� �ʿ� : web.xml


   


