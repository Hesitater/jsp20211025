<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>04el-request.jsp</title>
</head>
<body>
<%
request.setAttribute("reqAttr1", "reqVal1");
request.setAttribute("reqAttr2", 900000000);
request.setAttribute("reqAttr3", false);
request.setAttribute("reqAttr4", "false");
%>

<p>java code : <%= request.getAttribute("reqAttr1") %></p>
<p>el : ${reqAttr1 }</p>
<p>java code : <%= request.getAttribute("reqAttr2") %></p>
<p>el : ${reqAttr2 }</p>
<p>java code : <%= request.getAttribute("reqAttr3") %></p>
<p>el : ${reqAttr3 }</p>
<p>java code : <%= request.getAttribute("reqAttr4") %></p>
<p>el : ${reqAttr4 }</p>
<p>java code : <%= request.getAttribute("reqAttr5") %></p>
<p>el : ${reqAttr5 }</p>

</body>
</html>