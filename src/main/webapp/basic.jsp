<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>basic.jsp</title>
</head>
<%
	String msg = "first jsp";
%>
<%		
		
		
		SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		Date date = new Date();
		String formatter = format.format(date);
		
	    //out. 메서드는 가능하나 알아서 되므로 불필요
%>
<body>
	<%UserVo userVo = (UserVo)session.getAttribute("userVo"); %>
		
	<%=userVo.getName()%>[<%=userVo.getAlias()%>]님 안녕하세요

	Hello, World
	</br> <%=msg %>
	
	<%--yyyy-mm-dd hh:mm:ss--%>
	
	</br>
	<%=formatter%>
</body>
</html>
<!-- http://localhost:8081/basic.jsp  -->