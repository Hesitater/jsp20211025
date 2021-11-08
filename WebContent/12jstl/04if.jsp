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
<title>04if.jsp</title>
</head>
<body>
<h1>name 파라미터가 있으면</h1>
<p>${param.name}님 반갑습니다.</p>
<h1>name 파라미터가 없으면</h1>
<p>손님 반갑습니다.</p>

<hr>

<c:if test="${not empty param.name }"></c:if>
<c:if test="${! empty param.name }"></c:if>
<c:if test="${empty param.name }"></c:if>

<c:if test="${param.name != null }">
	<p>${param.name } 님 반갑습니다.</p>
</c:if>

<c:if test="${param.name == null }">
	<p>손님~ ㅎㅇ</p>
</c:if>

<hr>
<hr>
<h2>삼항 연산자</h2>
<p>
${empty param.name? '손' : param.name }님 반갑습니다.
</p>

</body>
</html>