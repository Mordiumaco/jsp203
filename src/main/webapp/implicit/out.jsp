<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out.jsp</title>
</head>
<body>
	<%-- jsp 내장객체(implict 객체) : jsp가 servelt으로 변환되는 과정에서 생성된 변수 
		
		request, session, response, out 
	
	--%>
	
	<% out.write("Time to totally kick ass :D huhahaha"); %>

</body>
</html>