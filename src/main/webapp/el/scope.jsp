<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope.jsp</title>
</head>
<body>
	<%--el scope 확인 예제--%>
	<%--
		page(pageContext): jsp페이지 에서만 유효한 속성
		request: 요청이 끝날때 까지 유요한 속성
		session: session이 만료 되기 전까지 유요한 속성
				, (세션이 만료되는 시점: server 종료시 / tomcat 설정에 따라/ sessio.invalidate();
									사용자가 server timeout 시간안에 요청을 하지 않을 때) 
									
		application: was에 하나 존재(서버 종료 전까지는 유효)
	 --%>
	 
	 <%
		application.setAttribute("attribute", "applicationAttribute");
	 	pageContext.setAttribute("attribute", "pageContextAttribute");
	 	request.setAttribute("attribute", "requestAttribute");
	 	//session.setAttribute("attribute", "sessionAttribute");
	 	
	 %>
	 
	 pageContext: <%=pageContext.getAttribute("attribute") %>
	 request: <%=request.getAttribute("attribute") %>
	 session: <%=session.getAttribute("attribute") %>
	 application : <%=application.getAttribute("attribute") %>
	 
	 <h2>el</h2>
	 <!-- 왠만하면 같은 이름으로 값을 두는 건 좋지 않다.  -->
	 el attribute: ${attribute} <br/>
	 el attribute: ${applicationScope.attribute} <br/>
</body>
</html>