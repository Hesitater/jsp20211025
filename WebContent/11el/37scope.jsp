<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>37scope.jsp</title>
</head>
<body>

<%
pageContext.setAttribute("attr1", "page value1");
request.setAttribute("attr1", "request value1");
session.setAttribute("attr1", "session value1");
application.setAttribute("attr1", "application value1");
%>

<p>\${attr1 } : ${attr1 }</p>
<p>\${requestScope.attr1 } : ${requestScope.attr1 }</p>
<p>\${sessionScope.attr1 } : ${sessionScope.attr1 }</p>
<p>\${applicationScope.attr1 } : ${applicationScope.attr1 }</p>
</body>
</html>