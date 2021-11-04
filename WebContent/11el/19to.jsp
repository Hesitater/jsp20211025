<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>19to.jsp</title>
</head>
<body>

<h1>19to.jsp</h1>

name : ${data1.name } <br>
city : ${data1.city } <br>
1000 : ${data1["1000"] } <br> 
this day : ${data1["this day"] } <br>
<hr>

<p>name : ${data1.name }</p>
<p>city : ${data1.city }</p>
<p>1000 : ${data1["1000"] }</p>
<p>this day : ${data1["this day"] }</p>
</body>
</html>