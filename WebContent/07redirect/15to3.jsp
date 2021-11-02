<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>15to.jsp</title>
</head>
<body>

<h1>15to.jsp</h1>

param1 : ${name["param1"] } <br>
param2 : ${name["param2"] } <br>
param3 : ${name["param3"] } <br>

</body>
</html>