<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>10login-form.jsp</title>
</head>
<body>
<!-- form>(input+br)*2+input:s -->
<form action="10process.jsp" method="post">
	<input type="text" name="userid" placeholder="아이디">
	<br>
	<input type="password" name="pw" placeholder="암호유출조심">
	<br>
	<input type="submit" value="로그인">
</form>

</body>
</html>