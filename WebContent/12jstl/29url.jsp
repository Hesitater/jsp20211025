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
<title>29url.jsp</title>
</head>
<body>

<a href="25Aprocess.jsp?title=java&writer=lee&price=300&stock=10&publisher=apub" >책 등록 처리</a> <br>
<hr>

<c:url value="25Aprocess.jsp" var="addSpringBookUrl" >
		<c:param name="title" value="spring"></c:param>
		<c:param name="writer" value="son"></c:param>
		<c:param name="price" value="10000"></c:param>
		<c:param name="stock" value="22"></c:param>
		<c:param name="publisher" value="bpub"> </c:param>
</c:url>
<br>
<a href="${addSpringBookUrl }"> 스프링책 추가</a>



</body>
</html>