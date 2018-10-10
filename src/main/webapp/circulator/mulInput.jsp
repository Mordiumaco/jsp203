<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
두개의 값 곱하기<br/>
<form action="/mulCalculation" method="post">
처음 값: <input type="number" name="param1"/><br/>
끝 값: <input type="number" name="param2"/><br/>
<input type="submit" value="전송">  
</body>
</html>