<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestResult.jsp</title>
</head>
<body>
	<%
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
	%>
	
	userId: <%=userId%> 
	<br/>
	name: <%=name%>
	<br/>
	
	<% 		
		//request dispatch 방식
		//UserVo userVo = (UserVo)request.getAttribute("userVo");
	
		//redirect방식 
		UserVo userVo = (UserVo)session.getAttribute("userVo");
	%>
	<br/>
	userId: <%=userVo.getUserID() %>
	<br/>
	name:	<%=userVo.getName() %>
	<br/>
	Alias:	<%=userVo.getAlias() %>
	<br/>
	birth:	<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(userVo.getBirth()) %>
	
</body>
</html>