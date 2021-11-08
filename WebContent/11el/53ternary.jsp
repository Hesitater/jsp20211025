<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>53ternary.jsp</title>
</head>
<body>

<h1>삼항 연산자</h1>
<%
pageContext.setAttribute("age", 18);
%>

<p>${ (age > 18) ? "old enough" : "too young" }</p>

</body>
</html>