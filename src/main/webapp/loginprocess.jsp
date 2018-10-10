<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginprocess.jsp</title>
</head>
<body>
	<%-- login.jsp 에서 전송한 파라미터 : id, password --%>
	<%-- 
	
	1. getParameter(String name)
	2. getParameterValues(String names)
	3. getParameterMap();
	4. getParameterNames();
		
	 --%>
	<%	
	Map<String, String[]> requestMap = request.getParameterMap();
	
	
	String idValues[] = request.getParameterValues("id");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//userId, password
	//제네릭을 설정해주면 굳이 다른 곳에서 객체를 따로 설정해주지 않아도 된다.
	Enumeration<String> parameterNames = request.getParameterNames();
	
	while(parameterNames.hasMoreElements()){
		String parameterName = parameterNames.nextElement();
		System.out.println("prameterName: " +parameterName);
	}
	
	
	%>

Id = <%=id %> </br>
Password = <%=password %>
</br>

request.getParameterValues("id"):
<%for(String str : idValues){
	out.write(str+"<br/>");
}
%>

<%for(String str : requestMap.get("id")){%>
	str : <%=str%> <br/> 
<% }%>

requestMap.get("password") : <%=requestMap.get("password") %>



</body>
</html>