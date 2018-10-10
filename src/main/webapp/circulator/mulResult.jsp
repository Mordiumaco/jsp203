<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mulResult.jsp</title>
</head>
<body>
<%
	Integer multi = (Integer)session.getAttribute("multi");
%>

<%=multi%>
</body>
</html>