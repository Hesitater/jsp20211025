<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10input-number.jsp</title>
</head>
<body>

<!-- form>input[type=number][name=param$]*2+input[type=submit] -->
<form action="">
	<input type="number" name="param1">
	<input type="number" name="param2">
	<input type="submit">
	
<hr>
<%= request.getParameter("param1") %>
<%= request.getParameter("param2") %>	
</form>
</body>
</html>