<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19select-option.jsp</title>
</head>
<body>

<form action="">
<!-- select>(opt)*3 -->
<select name="color" id="">
	<option value="red">빨강</option>
	<option value="yellow" selected>노랑</option>
	<option value="blue">파랑</option>
</select>

<br>

<input type="submit" value="전송">
</form>

<hr>

<%
String color = request.getParameter("color");
%>
<p>내가 선택한 색 : <%=color %></p>

</body>
</html>