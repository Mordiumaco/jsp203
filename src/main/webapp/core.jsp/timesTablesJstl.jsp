<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String number = request.getParameter("number");
	
%>
<title>Insert title here</title>
<style type="text/css">
	td{
		
		border:solid 1px black;
		
	}
	
	tr{
		border: solid 1px black;
	}
</style>

</head>
<body>
<%-- ${param.number} --%>
	<table>
	<% 
	for(int i = 1; i < 9; i++){
	%>
		<tr>
		<%for(int j = 2; j < 10; j++){%>
			
			<td> 			
				<%=j%>*<%=i%> = <%=i*j%>
				
			</td>	
			
		<%		
		}
		%>
		</tr>
	<% 
	}
	%>
	</table>
</body>
</html>