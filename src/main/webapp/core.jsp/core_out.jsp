<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>core_out.jsp</title>
</head>
<body>
	<%
	
	request.setAttribute("userId", "brown"); 
	request.setAttribute("userNm", "cony");
	
	%>


<label>userId : </label>
<c:out value="${userId}"></c:out>
<br/>

<label>userNm : </label>
<c:out value="${userNm}"></c:out>
<br/>

<label>user : </label>
<c:out value="${user}" default="뿌잉뿌잉"></c:out>
<br/>

	
</body>
</html>