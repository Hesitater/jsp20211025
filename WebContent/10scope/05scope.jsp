<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05scope.jsp</title>
</head>
<body>
<h1>request, session, application</h1>
<%
Integer reqCounter = (Integer) request.getAttribute("counter");
if (reqCounter == null) {
	reqCounter = 0;
}
reqCounter++;
request.setAttribute("counter", reqCounter);


Integer SesCounter = (Integer) session.getAttribute("counter");
if (SesCounter ==  null) {
	SesCounter = 0;
}
SesCounter++;
session.setAttribute("counter", SesCounter);
	
Integer appCounter = (Integer) application.getAttribute("counter");
if (appCounter == null) {
	appCounter = 0;
}
appCounter++;
application.setAttribute("counter", appCounter);
	
%>
<ul>
	<li>request counter : <%=request.getAttribute("counter") %></li>
	<li>session counter : <%=session.getAttribute("counter") %></li>
	<li>applicaction counter : <%=application.getAttribute("counter") %></li>
</ul>


</body>
</html>































