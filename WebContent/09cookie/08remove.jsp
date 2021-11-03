<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08remove.jsp</title>
</head>
<body>
<h1>08 쿠키 제거</h1>

<%
Cookie cookie = new Cookie("hesitater", "mangja");
cookie.setMaxAge(0);
response.addCookie(cookie);

%>


</body>
</html>