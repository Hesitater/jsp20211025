<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06logout.jsp</title>
</head>
<body>
<%-- session 삭제 --%>
<%
session.invalidate();
%>
<a href="06login.jsp">로그인</a>
<a href="06main.jsp">메인</a>
</body>
</html>