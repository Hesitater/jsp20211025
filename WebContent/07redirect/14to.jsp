<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>14to.jsp</title>
</head>
<body>

<h1>14to.jsp</h1>

param : <%= request.getParameter("param") %> <br>
param1 : <%= request.getParameter("param1") %> <br>


</body>
</html>