<%@page import="kr.or.ddit.filter.RequestConterFilter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //RequestConterFilter.rcMap  %>
<form action="/filterServlet" method="post">
	<input type="submit" value="조회수 올리기">
</form>
<br/>
<c:forEach items="${rcMap}" var="map">
	${map.key} = ${map.value} <br/>	
</c:forEach>


</body>
</html>