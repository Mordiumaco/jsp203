<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	//factorial method 선언 
	public int factorial(int i){
		int result;	
	
		if(i <= 1){
			result = 1;
			return result;
		}
		
		return i*factorial(i-1);
	}

	int answer = factorial(8);	
	
%>	


	<%for(int i = 1; i <= 8; i++){%>
		factorial(<%=i%>) = <%=factorial(i)%> <br>	
	<%}%>
	
	<%=answer%>
	
</body>
</html>