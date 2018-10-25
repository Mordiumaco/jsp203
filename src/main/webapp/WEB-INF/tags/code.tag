<%@tag import="kr.or.ddit.prod.vo.ProdVO"%>
<%@tag import="java.util.List"%>
<%@tag import="java.util.ArrayList"%>
<%@tag import="java.sql.DriverManager"%>
<%@tag import="java.sql.ResultSet"%>
<%@tag import="java.sql.PreparedStatement"%>
<%@tag import="java.sql.Connection"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="code" type="java.lang.String" required="true"%>
	
	
	
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<ProdVO> prodList = new ArrayList();
	
	try{
		
		String driver = "oracle.jdbc.driver.OracleDriver";

		Class.forName(driver);

		String address = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "pc20";
		String password = "java";
		
		
		
		String code = (String)jspContext.getAttribute("code");
		
		System.out.println("code => "+code);
		
		
		if(code == null){
			code = "P101";
		}
		
		conn = DriverManager.getConnection(address, user, password);
		String sql = "select prod_name, prod_id from prod where prod_lgu = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		rs = pstmt.executeQuery();
	 
		while(rs.next()){
			ProdVO prod = new ProdVO();
			prod.setProdName(rs.getString(1));
			prod.setProdId(rs.getString(2));
			
			prodList.add(prod);
		}
		
		request.setAttribute("prodList", prodList);
		
	} catch (Exception e) {
		try{
			if(rs != null){
				rs.close();
			}
			if(pstmt != null){
				conn.close();
			}
			if(conn != null){
				conn.close();
			}
		}catch(Exception e2){
			e2.printStackTrace();
		}
	}
	
	System.out.println("prodlist => "+prodList);
%>


=========select box ==========<br/>
제품 직군: ${code}
<br/>
<select>
	<c:forEach items="${prodList}" var="vo">
		<option value="${vo.prodId}">${vo.prodName}</option>
	</c:forEach>
</select>
<br/>
=========select box end ===========