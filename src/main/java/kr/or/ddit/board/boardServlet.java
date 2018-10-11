package kr.or.ddit.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;
import kr.or.ddit.util.model.PageVo;

/**
 * Servlet implementation class boardServlet
 */
@WebServlet("/memberpage")
public class boardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		
		PageVo pageVo = new PageVo();
		pageVo.setPage(Integer.parseInt(page));
		pageVo.setPageSize(10);
		
		UserServiceInf service = new UserService();
		
		List<JSPUserVO> user_list = service.selectUserAll();
		//List<JSPUserVO> select_list = service.selectUserPageList(pageVo);
		
		
		//request.setAttribute("select_list", select_list);
		request.setAttribute("user_list", user_list);
		request.setAttribute("page", page);
		
		RequestDispatcher rd = request.getRequestDispatcher("user/userAllList.jsp");
		rd.forward(request, response);
		
	}
}
