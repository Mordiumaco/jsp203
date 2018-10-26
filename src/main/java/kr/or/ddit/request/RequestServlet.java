package kr.or.ddit.request;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.user.model.UserVo;

/**
 * Servlet implementation class RequestServlet
 */


//3.0 부터 제공하는 기능(?) 
//url 맵핑을 해준다 (이 밑에)
@WebServlet("/requestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}*/

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//paramater userId, name
		
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		
		
		//request 정보에 값을 저장 
		//request에만 유효
		UserVo userVo  = getUser(userId);
		request.setAttribute("userVo", userVo);
		
		//--redirect에 값을 보내기위해서..
		HttpSession session = request.getSession();
		session.setAttribute("userVo", userVo);
		
		//--- requestDispatch 방식
		
		//dispatch forward : //request/requestResult.jsp
		//RequestDispatcher rd = request.getRequestDispatcher("request/requestResult.jsp");
		//rd.forward(request, response);
		//-------------------------------------------------------------------------------send redirect로 보내기 
		
		//--redirect 방식
		//resp.sendRedirect("main.jsp?id="+id1+"&password="+password);
		//response.sendRedirect("request/requestResult.jsp?");
		
		request.getRequestDispatcher("/filter/requestCount.jsp").forward(request, response);
		
	}
	
	
	public UserVo getUser(String userId){
		//userId 매개변수를 이용하여 사용자 정보를 db에서 조회 
		UserVo userVo = new UserVo();
		userVo.setUserID(userId);
		userVo.setName("브라운");
		userVo.setAlias("곰");
		userVo.setBirth(new Date());
		
		return userVo;
	}
}
