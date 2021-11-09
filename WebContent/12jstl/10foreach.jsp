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
<title>10foreach.jsp</title>
</head>
<body>
<h1>jstl core For Each</h1>
<c:forEach begin="1" end="3">
	<p>반복할 코드1-3</p>
</c:forEach>

<c:forEach begin="5" end="7"><p>반복할코드5-7</p></c:forEach>

<c:forEach begin="1" end="10" step="2">
	<p>반복할 코드1-10  step2</p>
</c:forEach>

<c:forEach begin="1" end="10" step="2" var="i">
	<p>${i } : 반복할코드4</p>
</c:forEach>

</body>
</html>