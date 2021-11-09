<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>12foreach-gugudan.jsp</title>
</head>
<body>
<%--
http://localhost:8080/jsp1025/12jstl/12foreach-gugudan.jsp?dan=3 이면 3단
dan 파라미터를 사용해서
구구단 출력
empty dan 이면 '단을 입력해주세요'
 --%>
 
<c:choose>
	<c:when test="${empty param.dan }">
		<h1>12foreach 구구단 n단</h1>
	</c:when>
	<c:otherwise>
	<h1>12foreach 구구단 ${param.dan }단</h1>
	</c:otherwise>
</c:choose>

<c:if test="${empty param.dan }">
	<p>단을 입력해주세요 (if)</p>
</c:if>
<c:if test="${!empty param.dan }">
<c:forEach begin="1" end="9" var="i">
	<p>${param.dan } X ${i } = ${ i*param.dan }</p>
</c:forEach>
</c:if>

<hr>

<c:choose>
	<c:when test="${empty param.dan }">
		<p>단을 입력해주세요(choose,when,other)</p>
	</c:when>
	<c:otherwise>
		<c:forEach begin="1" end="9" var="i">
		<p>${param.dan } X ${i} = ${param.dan*i }</p>
		</c:forEach>
	</c:otherwise>

</c:choose>

<hr>
<h1>샘</h1>
<c:if test="${empty param.dan }" var="emptyDan">
	<p>단을 입력해주세요 (var="emptyDan")</p>
</c:if>
<c:if test="${not emptyDan}">
<c:forEach begin="1" end="9" var="i">
	<p>${param.dan } X ${i } = ${ i*param.dan }</p>
</c:forEach>
</c:if>


</body>
</html>


















