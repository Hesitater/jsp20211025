<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>16to.jsp</title>
</head>
<body>
<%
Bean04 b4 = (Bean04) session.getAttribute("bean2");
%>

<h1>16to.jsp</h1>

<h2>java code</h2>
<p>nickName : <%=b4.getNickName() %></p>
<p>age : <%=b4.getAge() %> </p>
<p>vip : <%=b4.isVip() %></p>
<hr><hr><hr>

<h2>el</h2>
<p>nickName : ${bean2.nickName }</p>
<p>age : ${bean2.age }</p>
<p>vip : ${bean2.vip }</p>


</body>
</html>