<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06from.jsp</title>
</head>
<body>

<h1>06from.jsp</h1>

<%
	request.setAttribute("attr1", "java");
	response.sendRedirect("06to.jsp");
%>
</body>
</html>