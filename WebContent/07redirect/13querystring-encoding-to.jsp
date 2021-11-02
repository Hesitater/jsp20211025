<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>13querystring-encoding-to.jsp</title>
</head>
<body>

<h1>13to.jsp 컨텐츠</h1>


a : <%= request.getParameter("a") %> <br>
b : <%= request.getParameter("b") %> <br> 
c : <%= request.getParameter("c") %> <br>
</body>
</html>