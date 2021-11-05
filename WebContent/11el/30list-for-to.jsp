<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>30list-for-to.jsp</title>
</head>
<body>

<%
List<String> bp = (List<String>) session.getAttribute("data");

for (int i = 0; i < bp.size(); i++ ) {
	pageContext.setAttribute("index", i);
%>
	<p>${index} : ${data[index] }</p>
<%
}
%>
</body>
</html>