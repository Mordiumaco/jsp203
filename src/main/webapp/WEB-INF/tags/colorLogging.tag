<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="length" type="java.lang.Integer" required="false"%>
<%@ attribute name="color" type="java.lang.String" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- length : 5 --%>
<c:if test="${length == null}">
	<c:set value="20" var="length"></c:set>
</c:if>
<c:if test="${color == null}">
	<c:set value="black" var="color"></c:set>
</c:if>


<c:forEach begin="1" end="${length}" var="i">
	=
</c:forEach>
	<b style=" color:${color}">logging</b>
<c:forEach begin="1" end="${length}" var="i">
	=
</c:forEach>
<br/>