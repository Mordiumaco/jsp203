<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view.jsp</title>
</head>
<body>
<!-- Post Method Way -->
userNm : ${userNm}<br/>
<form action="/filterServlet" method="post">
<input type="text" name="userNm" value="브라운">
<button type="submit">제출</button>
</form>

</body> 
</html>