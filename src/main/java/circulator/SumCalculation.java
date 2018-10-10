package circulator;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sumCalculation")
public class SumCalculation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Pattern pattern = Pattern.compile("^[0-9]*$"); 
		Matcher matcher = pattern.matcher(request.getParameter("start"));
		
		//start가 숫자인지 아닌지.
		if(!matcher.find()){
			response.sendRedirect("circulator/sumInput.jsp");
			return;
		}
		
		matcher = pattern.matcher(request.getParameter("end"));
		
		//end가 숫자인지 아닌지.
		if(!matcher.find()){
			response.sendRedirect("circulator/sumInput.jsp");
			return;
		}
		
		int start =  Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		
		CalculationLogic logic = new CalculationLogic();
		int sum = logic.sumBetweenTwoNumbers(start,end);
		
		request.getSession().setAttribute("sum", sum);
		
		RequestDispatcher rd = request.getRequestDispatcher("circulator/sumResult.jsp");
		rd.forward(request, response);
	}

}
