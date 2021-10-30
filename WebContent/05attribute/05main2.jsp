<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05main2</title>
</head>
<body>

<%
/* String[] list = {"home", "about", "login", "logout"}; */
List<String> list = Arrays.asList("home", "about", "login", "logout");
request.setAttribute("menuItems", list);
%>


<%--04에서 String[] 대신 arraylist 로 --%>
<jsp:include page="05sub.jsp"></jsp:include>

<h1>main2 contents</h1>
</body>
</html>