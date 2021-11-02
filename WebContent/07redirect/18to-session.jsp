<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>18to-session.jsp</title>
</head>
<body>

<h1>18to-session.jsp</h1>

attr1 : <%= request.getAttribute("attr1") %> <br>
attr2 : <%= session.getAttribute("attr2") %> <br>

</body>
</html>