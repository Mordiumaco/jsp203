<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setHeader("Content-Disposition", "attachment; filename=excel.xls");
	response.setHeader("Content-Description", "JSP Henerated Data");
	response.setContentType("application/vnd.ms-excel");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>excel.jsp</title>
</head>
<!-- 
	액셀로 다운 받게 하는 방법 
	그리 중요하지는 않으나 배워놓으면 좋다. :)
	요구사항으로 들어올 수 있다. 
 -->
<body>
	<table>
		<tr>
			<td>userId</td>
			<td>name</td>
		</tr>
		<tr>
			<td>brown</td>
			<td>브라운</td>
		</tr>
		<tr>
			<td>sally</td>
			<td>샐리</td>
		</tr>
	</table>
</body>
</html>