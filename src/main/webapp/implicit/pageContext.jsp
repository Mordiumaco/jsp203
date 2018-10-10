<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pageContext.jsp</title>
</head>
<%--내장 객체(Implicit Object) 

	request, response, session, application, out
	pageContext
	
--%>
<body>
<%
	out.equals(pageContext.getOut());
	pageContext.getRequest();
	//application == servletcontext
	application.equals(pageContext.getServletContext()); 
	
	//out, request
	//response, session, application
	
%>
<%-- out, request, response, session, page , application --%>
<%-- pageContext 로 해당 페이지의 내장객체의 정보들을 전체적으로 다 얻어올수 있다. 다 true 뜬다. --%>
out.equals(pageContext.getOut()) : <%= out.equals(pageContext.getOut()) %> <br/>
request.equals(pageContext.getRequest()) : <%= request.equals(pageContext.getRequest()) %><br/>
response.equals(pageContext.getResponse()): <%=response.equals(pageContext.getResponse()) %><br/>
session.equals(pageContext.getSession()): <%=session.equals(pageContext.getSession()) %><br/>
page.equals(pageContext.getPage()): <%=page.equals(pageContext.getPage()) %><br/>
application.equals(pageContext.getServletContext()): <%=application.equals(pageContext.getServletContext()) %><br/>

</body>
</html>