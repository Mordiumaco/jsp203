<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String driver = "oracle.jdbc.driver.OracleDriver";

	Connection conn = null;
	
	try{
		Class.forName(driver);
		
		String address = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "pc20";
		String password = "java";
		
		long startTime = System.currentTimeMillis();
		for(int i = 0; i < 30 ; i++){
			conn = DriverManager.getConnection(address, user, password);
			out.println("schema : "+i+ conn.getSchema()+"<br/>");
			try{ conn.close();} catch(Exception e3){};
		}
		long endTime = System.currentTimeMillis();
		
		out.println("total process time :"+(endTime-startTime)); 
				
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//6. 자원 반납 
		try{
			if(conn != null){
				conn.close();
			}
		}catch(Exception e2){
			e2.printStackTrace();
		}
	}
%>
</body>
</html>