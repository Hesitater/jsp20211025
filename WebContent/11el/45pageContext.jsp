<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>45pageContext.jsp</title>
</head>
<body>
<h1>el pageContext 기본객체</h1>
<p>${pageContext }</p>
<p>${pageContext.request }</p>
<p>${pageContext.session }</p>

<hr>
<p>${pageContext.request.cookies}</p>
<p>${pageContext.request.cookies[0].name}</p>
<p>${pageContext.request.cookies[0].value}</p>

<hr>

<p><%=request.getContextPath() %></p>
<p>${pageContext.request.contextPath }</p>
</body>
</html>