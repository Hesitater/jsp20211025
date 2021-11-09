<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>20map.jsp</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
map.put("lang","java");
map.put("db","mysql");
map.put("server","tomcat");
map.put("framework","spring");
map.put("library","jquery");

pageContext.setAttribute("data", map);
%>

<c:forEach items="${data }" var="entry">
	${entry } <br>
</c:forEach>

<hr>
<c:forEach items="${data }" var="entry">
	${entry.key } : ${entry.value }<br>
</c:forEach>

<p>\${data} : ${data }</p>
</body>
</html>



















