<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<% JSPUserVO user = (JSPUserVO)request.getAttribute("user"); %>
			<form class="form-horizontal" role="form" action="/userUpdate?userId=<%=user.getUserId()%>" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 사진</label>
						<div class="col-sm-10">
						
							<c:choose>
								<c:when test="${user.profile!=null}">
									<img src="${user.profile}"/>
								</c:when>
								<c:otherwise><img src="/profile/noimage.png"/></c:otherwise>
							</c:choose>
							<%-- 
							<img src="<%=profilePath%>"/>
							<%
								String profilePath = user.getProfile();
								profilePath = profilePath == null ? "/profile/noimage.png": profilePath;
							%>
							<img src="<%=profilePath%>"/>
							 --%>
						</div>
						<div class="col-sm-offset-2 col-sm-10">
								<input type="file" class="form-control" value="프로필" name="profile">
						</div>
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-default" value="프로필 등록"/>
						</div>
					</div>
			
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이메일</label>
						<div class="col-sm-10">
							<label class="control-label"><%=user.getEmail()%></label>
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 아이디</label>
						<div class="col-sm-10">
							<label class="control-label"><%=user.getUserId()%></label>
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이름</label>
						<div class="col-sm-10">
							<label class="control-label"><%=user.getName()%></label>
						</div>
					</div>
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">전화번호</label>
						<div class="col-sm-10">
							<label class="control-label"><%=user.getTel()%></label>
						</div>
					</div>
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<label class="control-label"><%=user.getPassword()%></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">사용자 등록</button>
						</div>
					</div>
				</form>

		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-8 blog-main">
		

	
		
	</div>
</div>

</body>
</html>
