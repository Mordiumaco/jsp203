<%@page import="java.text.SimpleDateFormat"%>
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
<link rel="icon" href="../../favicon.ico">

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
	<h1 class="blog-title">INTRODUCE</h1>
	<p class="lead blog-description">about Member</p>
</div>

<div class="row">

	<div class="col-sm-8 blog-main">

		<div class="blog-post">
			<h2 class="blog-post-title">Member</h2>
			<p class="blog-post-meta">
				2018.05.29, room 203
			</p>

			<p>jsp를 배울 멤버들을 소개합니당</p>
			<hr>
<%-- 			
			<ul>
<%
	List<JSPUserVO> userList = (List<JSPUserVO>)request.getAttribute("user_list");
	
	

	for(int i = 0; i < userList.size(); i++){
%>
		<li><%=userList.get(i).getName()%></li>
<% 
	}
%>

				<li>servlet 동작원리</li>
			</ul> --%>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-8 blog-main">
		<h2 class="sub-header">사용자</h2>
		<div class="table-responsive">
			<table class="table table-striped">
				<tr>
					<th>번호</th>
					<th>사용자 아이디</th>
					<th>사용자 이름</th>
					<th>사용자 생일</th>
				</tr>
	<%-- 			
				<%
			//유저 loop를 사용하여 출력
			for(int i = 0; i < userList.size(); i++){
		%>
		
				<tr>
					<td><%=i+1%></td>
					<td><%=userList.get(i).getUserId()%></td>
					<td><%=userList.get(i).getName()%></td>
					<td><%=new SimpleDateFormat("yyyy-MM-dd").format(userList.get(i).getBirth())%></td>
				</tr>
		<% 
			}
		%>	
		 --%>
			<c:forEach items="${user_list}" var="vo">
				<tr>
					<td>${status.index}</td>
					<td>${vo.userId}</td>
					<td>${vo.name}</td>
					<td><fmt:formatDate value="${vo.birth}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		
			</table>
		</div>

		<a class="btn btn-default pull-right">사용자 등록</a>

		<div class="text-center">
			<ul class="pagination">
				<li><a href="userAllList.jsp?page=1">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
</div>

</body>
</html>
