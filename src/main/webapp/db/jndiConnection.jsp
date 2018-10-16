<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
<title>jndiConnection.jsp</title>
</head>
<body>

	<%
		//jndl connection
		Context initialContext = new InitialContext();
		
		DataSource ds = (DataSource)initialContext.lookup("java:comp/env/jdbc/oracleDB");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		long startTime = System.currentTimeMillis();
		
		String sql = "select * from jspstudent where no = ?";
		int number = (int)((Math.random()*19)+1);
		
		conn = ds.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, number);		
		rs = pstmt.executeQuery();
	%>

		<%
			while (rs.next()) {
		%>		
				<canvas id="myCanvas" width="200" height="200" style="border: 1px solid #333"></canvas>
				<script type="text/javascript">
					var canvas = document.getElementById("myCanvas")
					var ctx = canvas.getContext("2d");
					/* 
					//사각형 그리기
					ctx.fillStyle = "#FF0000";
					ctx.fillRect(0,0,150,150);
					*/
					
					//원 그리기
					ctx.beginPath();
					ctx.arc(100,100,100,0,2*Math.PI);
					ctx.stroke();
					
					ctx.font = "60px Arial";
					ctx.fillText("<%=rs.getString("name")%>",15, 125);
					
				</script>
				
		<% 		
			}
		%>
</body>
</html>