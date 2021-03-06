<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.or.ddit.util.model.PageVo"%>
<%@page import="kr.or.ddit.user.service.UserService"%>
<%@page import="kr.or.ddit.user.service.UserServiceInf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>core.jsp</title>
</head>
<body>	<%-- core tag prefix : --%>
	<%-- jstl 태그 사용법 <prefix: 태그명> --%>
	<h2>core set</h2>
	
	<!-- c:set -> page와 같다.  -->
	<%-- pageContext.setAttribute("attribute", "cSetValue"); --%>
	<c:set var="attribute" value="cSetValue" scope="page"/>
	
	el: ${attribute} <br/>
	pageContext: <%=pageContext.getAttribute("attribute")%><br/>
	request: <%=request.getAttribute("attribute") %><br/>
	
	<h2>core remove</h2>
	<%-- pageContext.setAttribute("attribute"); --%>
	<c:remove var="attribute"/>
	<%-- el을 사용하면 jstl태그와 사용하면 null처리를 알아서 공백처리로 하여 오류를 없애준다. --%>
	el: ${attribute} <br/>
	
	<h2>if</h2>
	<%--
		if(){
		}else if(){
		} 
		와 같다
	 --%>
	<c:set var="code" value="01"/>
	
	<%--code가 "01"이면 if 안쪽 코드가 실행 --%>
	<%-- 참고로 c:if 를 사용할때는 끝에 부분에 공백이 있으면 안된다 }"> 딱 붙여줘야한다. --%>
	<c:if test="${code=='01'}">
		if 안쪽
	</c:if>
	
	<h2>core choose : 실질적인 if 구문</h2>
	<c:choose>
		<c:when test="${code=='00'}">공공</c:when>
		<c:when test="${code=='01'}">공일</c:when>
		<c:when test="${code=='02'}">공이</c:when>
		<c:when test="${code=='03'}">공삼</c:when>
		<c:otherwise> else</c:otherwise>
	</c:choose>
	
	<h2>core foreach : 반복문</h2>
	<%--사용자 리스트 1페이지 조회 --%>
	<%
		UserServiceInf userService = new UserService();
		PageVo pageVo = new PageVo();
		pageVo.setPage(1);
		pageVo.setPageSize(10);
		
		Map<String, Object> resultMap = userService.selectUserPageList(pageVo);
		request.setAttribute("userList", resultMap.get("userList"));
		
	%>
	<table class="table table-striped table-hover">
		<tr>
			<th>번호</th>
			<th>사용자 아이디</th>
			<th>사용자 이름</th>
			<th>사용자 생일</th>
		</tr>
	<%-- <c:set var="user" value="userList의 값" --%>
	<c:forEach items="${userList}" var="user">
		<tr class="userClick">
			<td>${user.rnum}</td>
			<td>${user.userId}</td>
			<td>${user.name}</td>
			<td>${user.birth}</td>
		</tr>			
	</c:forEach>
	</table>
	
	<h2>core foreach index loop</h2>
	<c:forEach begin="0" end="10" var="i">
		${i}&nbsp;&nbsp;&nbsp;&nbsp;
	</c:forEach>
	
	
	<h2>core foreach : map</h2>
	<!-- 잘 사용하지는 않는다. -->
	<%
		Map<String, String> strMap = new HashMap<String, String>();
		strMap.put("ranger1", "brown");	
		strMap.put("ranger2", "sally");	
		strMap.put("ranger3", "cony");	
		strMap.put("ranger4", "james");	
		
		request.setAttribute("strMap", strMap);
	%>
	
	<c:forEach items="${strMap}" var="map">
		${map.key} = ${map.value} <br/>		
	</c:forEach>
	
	<h2>core token : String </h2>
	<%
		request.setAttribute("lineRangers", "1,2,3,4,5,6");
	%>
	<c:forTokens items="${lineRangers}" delims="," var="i">
		${i}&nbsp;
	</c:forTokens>	
</body>
</html>