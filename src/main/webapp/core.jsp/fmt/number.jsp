<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>number.jsp</title>
</head>
<body>
<%-- 	<%
		request.setAttribute("number", 100000);
		request.setAttribute("numberPercent", 1);
	%>
 --%>
<c:set var="number" value="100000"></c:set>
<c:set var="numberPercent" value="1"/>

<h2>기본 로케일</h2>
<fmt:formatNumber value="${number}"/><br/>
<fmt:formatNumber value="${number}" type="currency"/><br/>
<fmt:formatNumber value="${numberPercent}" type="percent"/><br/>

<h2>영문 로케일</h2>
<fmt:setLocale value="en_US"/>
<fmt:formatNumber value="${number}"/><br/>
<fmt:formatNumber value="${number}" type="currency"/><br/>
<fmt:formatNumber value="${numberPercent}" type="percent"/><br/>

<h2>독일 로케일</h2>
<fmt:setLocale value="de_DE"/>
<fmt:formatNumber value="${number}"/><br/>
<fmt:formatNumber value="${number}" type="currency"/><br/>
<fmt:formatNumber value="${numberPercent}" type="percent"/><br/>


<h2>독일 -> 한국</h2>
<c:set var="parseNumber" value="1,000.99"/>
<fmt:setLocale value="ko"/>
<fmt:parseNumber value="${parseNumber}"></fmt:parseNumber>


</body>
</html>