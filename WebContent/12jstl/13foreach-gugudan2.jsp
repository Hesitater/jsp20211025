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
<title>13foreach-guguand2.jsp</title>
</head>
<body>
<c:if test="${empty param.dan1 }" var="gugudan">
	<p>구구단값을 입력해주세요</p>
	<p>\${param.dan1 } , \${param.dan2 }</p>
	<p>ex) /13foreach-gugudan2.jsp?dan1=2&dan2=3</p>
</c:if>
<c:if test="${not gugudan && gugudan1}">
	<h1>구구단${param.dan2}단 ~ ${param.dan1}단까지</h1>
</c:if>
<c:if test="${not gugudan && not gugudan1 }">
	<h1>구구단${param.dan1}단 ~ ${param.dan2}단까지</h1>
</c:if>

<hr>

<c:if test="${not gugudan }">
<c:if test="${param.dan1 > param.dan2 }" var="gugudan1">
	<c:forEach begin="${param.dan2 }" end="${param.dan1 }" var="i">
		<c:forEach begin="1" end="9" var="j">
			${i } X ${j} = ${i*j} <br>
		</c:forEach>
		<hr>
	</c:forEach>
</c:if>

<c:if test="${not gugudan1}">
	<c:forEach begin="${param.dan1 }" end="${param.dan2 }" var="i">
		<c:forEach begin="1" end="9" var="j">
			${i } X ${j} = ${i*j} <br>
		</c:forEach>
		<hr>
	</c:forEach>
</c:if>
</c:if>

<a href="13foreach-gugudan2.jsp">초기화면</a>
</body>
</html>