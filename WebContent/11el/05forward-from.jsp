<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05forward-from.jsp</title>
</head>
<body>

<h1>05forward-from.jsp</h1>

<%
request.setAttribute("reqAttr1", 3.1415);
%>

<jsp:forward page="05forward-to.jsp"></jsp:forward>

</body>
</html>