<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sumInput.jsp</title>
<script type="text/javascript">
		
</script>
</head>
<body>
처음 값~ 끝 값 사이 더하기<br/>
<form action="/sumCalculation" method="get">
처음 값: <input type="text" name="start"/><br/>
끝 값: <input type="text" name="end"/><br/>
<input type="submit" value="전송">  
</form>
</body>
</html>