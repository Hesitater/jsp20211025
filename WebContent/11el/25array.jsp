<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>25array.jsp</title>
</head>
<body>

<%
String[] arr1 = {"java", "react", "jsp", "vue"};

pageContext.setAttribute("list", arr1);
%>
<hr>

<p>arr1 : ${list }</p>
<hr>

<p>0 : ${list[0] }</p>
<p>1 : ${list[1] }</p>
<p>2 : ${list[2] }</p>
<p>3 : ${list[3] }</p>
<p>4 : ${list[4] }</p>

</body>
</html>