<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="kr.or.ddit.util.model.PageVo"%>
<%@page import="kr.or.ddit.prod.service.ProdService"%>
<%@page import="kr.or.ddit.prod.service.ProdServiceInf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Jsp</title>
<%@ include file="/common/basicLib.jsp" %>
</head>

<body>
<%--header --%>
<%@ include file="/common/header.jsp" %>	

<div class="container-fluid">
		<div class="row">
		
<%--left --%>
<%@ include file="/common/left.jsp" %>			
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				

<div class="blog-header">
	<h1 class="blog-title">PROD LIST</h1>
	<p class="lead blog-description">--- PROD LIST ---</p>
</div>

<div class="row">
	<div class="col-sm-8 blog-main">
		<h2 class="sub-header">제품 목록</h2>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
					<th>번호</th>
					<th>제품명</th>
					<th>분류</th>
					<th>제품 등록일</th>
				</tr>
				<%
					ProdServiceInf service = new ProdService();
					PageVo pageVo = new PageVo();
					pageVo.setPage(Integer.parseInt(request.getParameter("page")));
					pageVo.setPageSize(Integer.parseInt(request.getParameter("pageSize")));
					
					List<ProdVO> prodList = service.selectUserForPage(pageVo);
					System.out.println(prodList.size());
					request.setAttribute("prodList", prodList);
				%>
				
				<c:forEach items="${prodList}" var="prod">
			<!-- 임시 방편 -->
			<!-- html.. onclick을 이용하는건 좋은 방법이 아니다. html 은 문서형식으로서의 역할만..-->
		<%-- 	<tr class="test" onclick="javascript:alert('<%=selectList.get(i).getUserId()%>')"> --%>
					<tr class="userClick">
						<td>${prod.rnum }</td>
						<td><a href="#">${prod.prodName}</a></td>
						<td>${prod.lprodName}</td>
						<td>${prod.prodDate}</td>
					</tr> 
				</c:forEach>
			</table>
		</div>

		<a class="btn btn-default pull-right" href="/userForm">제품 등록</a>
		
		
		<div class="text-center">
			<ul class="pagination">
			<li>
		      <a href="/userPageList?page=1" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    
		    <c:forEach begin="1" end="${pageCnt}" var="i">
		    	<li><a href="/userPageList?page=${i}">${i}</a></li>
		    </c:forEach>
		    
		<%-- <%
			for(int i = 1; i <= pageCnt; i++){
		%>
				<li><a href="/userPageList?page=<%=i%>"><%=i%></a></li>
		<% 
			}
		%> --%>
			<!-- 	<li><a href="/userPageList?page=1">1</a></li>
				<li><a href="/userPageList?page=2">2</a></li>
				<li><a href="/userPageList?page=3">3</a></li>
				<li><a href="/userPageList?page=4">4</a></li>
				<li><a href="/userPageList?page=5">5</a></li> -->
				
				
			</ul>
		</div>
	</div>
</div>
</body>
</html>
