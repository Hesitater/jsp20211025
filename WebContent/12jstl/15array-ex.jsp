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
<title>15array-ex.jsp</title>
</head>
<body>
<h1>foreach - array - ex</h1>
<% 
pageContext.setAttribute("list", new String[] {"apple", "melon", "coffee", "milk"});
%>
<ul>
<c:forEach items="${list }" var="item">
	<li>${item }</li>
</c:forEach>
</ul>

<ul>
<c:forEach items="${list }" var="food">
	<li>${food }
</c:forEach>
</ul>

<hr>


<%-- for each사용해서 
<ul>
	<li>apple</li>
	<li>melon</li>
	<li>coffee</li>
	<li>mil</li>
</ul>
--%>
</body>
</html>