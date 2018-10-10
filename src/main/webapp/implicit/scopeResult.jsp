<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scopeResult.jsp</title>
</head>
<body>

requestScope: <%=request.getAttribute("requestScope") %><br/>
sessionScope: <%=session.getAttribute("sessionScope") %><br/>
applicationScope: <%=application.getAttribute("applicationScope") %><br/>

<!-- 
	scope 테스트 시나리오
	
	1.localhost:8081/implicit/scope.jsp 에서 전송 request영역
	
	답: 
	requestScope: brown_attribute
	sessionScope: sally_attribute
	applicationScope: cony_attribute 
	
	2.새로운 탭을 열어서(ctrl+t)
	localhost:8081/implicit/scopeResult.jsp session
	
	답: 
	requestScope: 
	sessionScope: sally_attribute
	applicationScope: cony_attribute 
	
	3.explorer 에서 
	localhost:8081/implicit/scopeResult.jsp application
	
	답: 
	requestScope: 
	sessionScope: 
	applicationScope: cony_attribute 
	
	4.cookie 삭제후 2번 테스트 
	
	

 -->
</body>
</html>