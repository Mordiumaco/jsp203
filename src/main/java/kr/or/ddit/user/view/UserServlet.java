package kr.or.ddit.user.view;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.user.model.JSPUserVO;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

@WebServlet("/userAllList")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//링크 클릭의 경우에는 GET을 사용한다. 
		//전체 사용자 정보조회 
		
		UserServiceInf userService = new UserService();
		
		List<JSPUserVO> user_list = userService.selectUserAll();
		
		HttpSession session = request.getSession();
		
		//조회된 사용자 정보를 userAllList.jsp를 통해 화면처리
		//userAllList.jsp에서 userList를 참조하려면?>?
		//attribute
		
		//session: 해당 사용자만 접근 가능(사용자 전용 공간) 
		//서버가 종료 되거나 요청 받은지 30분이 지나지 않으면 자료를 보관한다. 
		//자주 참조하는 데이터
		//너무 많은 데이터를 저장할 경우 ?? OOM 유발 가능성(과부하 유발 가능성 발생) 
		
		//application : 모든 사용자가 접근 가능(서버당 하나만 생성) 
		//[모두가 접근이 가능하기 떄문에 요청에 관련된 답변(정보)를 받기에는 좋지는 않은 공간..
		//내가 요청하지 않은 걸 받는 공간이기 때문
		//--> 일반적으로 설정과 관련된 값을 저장
		//
		
		//request : 해당 요청의 응답이 끝날때까지
		//
		
		//여기에서 답은 없지만.. 자주 사용되지 않고 요청하는 자료를 반환한다면 request가 모범적인 답안이다. 
		
		request.setAttribute("user_list", user_list);
		
		//화면으로 위임하는 방법 2가지 
		//1. dispatch : 보통 / 일반적으로 사용
		//2. sendRedirect : 서버에 데이터가 변경되었을 떄
		
		RequestDispatcher rd = request.getRequestDispatcher("user/userAllList.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
