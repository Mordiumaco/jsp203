<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>date.jsp</title>
</head>
<body>
	<c:set var="date" value="<%=new Date()%>"/>
	
	<!-- formatDate default pattern  = yyyy.MM.dd -->
	Today date : <fmt:formatDate value="${date}"/>
	<br/>
	(pattern)date : <fmt:formatDate value="${date}" pattern="yyyy-MM-dd"/>
	<br/>
	date(full): <fmt:formatDate value="${date}" type="date" dateStyle="full"/>
	<br/>
	date(medium): <fmt:formatDate value="${date}" type="date" dateStyle="medium"/>
	<br/>
	date(short): <fmt:formatDate value="${date}" type="date" dateStyle="short"/>
	<br/>
	time: <fmt:formatDate value="${date}" type="time"/>
	<br/>
	
	<c:set var="parseDate" value="2018-10-25"/>
	<fmt:parseDate value="${parseDate}" var="testDate" pattern="yyyy-MM-dd"/>
	parseDete : <fmt:formatDate value="${testDate}"/>
</body>
</html>