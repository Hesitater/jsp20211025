<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07invalidate2.jsp</title>
</head>
<body>

<% 
session.invalidate();
%>

<a href="07invalidate1.jsp">다시 선택하기</a>
</body>
</html>