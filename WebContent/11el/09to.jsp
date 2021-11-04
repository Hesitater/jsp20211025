<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>09to.jsp</title>
</head>
<body>

<h1>09to.jsp</h1>
<%-- session attribute가 출력되도록 el로
	city,pop,vip,pi
--%>
	
<p>el city : ${city }</p>
<p>el pop : ${pop }</p>
<p>el vip : ${vip }</p>
<p>el pi : ${pi }</p>

</body>
</html>