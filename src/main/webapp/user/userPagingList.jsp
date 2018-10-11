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
<style type="text/css">
	.userClick{
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		console.log("document.ready");
		//tr에 select( class = "userClick")
		$(".userClick").click(function(){
			console.log("userClick")
			var userId = $(this).children()[1].innerText;
			
			$("#userId").val(userId);
			//.submit();
			$("#frm").submit();
			
		});
		
		/* var ev = "click";
		$(".userClick").on("click", function(){
			
		});
		 */
	});
</script>

</head>
<form id="frm" action="/tableUserDetail" method="get">
	<input type="hidden" id="userId" name="userId"/>
</form>
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
		<h2 class="sub-header">사용자</h2>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
					<th>번호</th>
					<th>사용자 아이디</th>
					<th>사용자 이름</th>
					<th>사용자 생일</th>
				</tr>
				<%
			
		/* 	List<JSPUserVO> selectList = (List<JSPUserVO>)request.getAttribute("selectList");
			String page_number = (String)request.getAttribute("page");
			Integer totalPage = (Integer)request.getAttribute("totalPage"); 
			System.out.println(selectList);
			
			if(page_number != null){
				Integer paging_number = Integer.parseInt(page_number);
			}
			*/
			
			//--교수님 방식 
			List<JSPUserVO> selectList = (List<JSPUserVO>)request.getAttribute("userList");
			Integer pageCnt = (Integer)request.getAttribute("pageCnt");
			
			
			for(int i = 0; i < selectList.size(); i++){
		%>		
		
					
				<!-- 임시 방편 -->
				<!-- html.. onclick을 이용하는건 좋은 방법이 아니다. html 은 문서형식으로서의 역할만..-->
			<%-- 	<tr class="test" onclick="javascript:alert('<%=selectList.get(i).getUserId()%>')"> --%>
				<tr class="userClick">
					<td><%=selectList.get(i).getRnum()%></td>
					<td><a href="/tableUserDetail?userId=<%=selectList.get(i).getUserId()%>"><%=selectList.get(i).getUserId()%></a></td>
					<td><%=selectList.get(i).getName()%></td>
					<td><%=new SimpleDateFormat("yyyy-MM-dd").format(selectList.get(i).getBirth())%></td>
				</tr> 
		<% 
			}
		%>
			</table>
		</div>

		<a class="btn btn-default pull-right" href="/userForm">사용자 등록</a>
		
		
		<div class="text-center">
			<ul class="pagination">
			<li>
		      <a href="/userPageList?page=1" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		<%
			for(int i = 1; i <= pageCnt; i++){
		%>
				<li><a href="/userPageList?page=<%=i%>"><%=i%></a></li>
		<% 
			}
		%>
			<!-- 	<li><a href="/userPageList?page=1">1</a></li>
				<li><a href="/userPageList?page=2">2</a></li>
				<li><a href="/userPageList?page=3">3</a></li>
				<li><a href="/userPageList?page=4">4</a></li>
				<li><a href="/userPageList?page=5">5</a></li> -->
				
				<li>
			      <a href="/userPageList?page=<%=pageCnt%>" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			</ul>
		</div>
	</div>
</div>

</body>
</html>
