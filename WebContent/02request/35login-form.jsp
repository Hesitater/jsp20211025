<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>35login-form</title>
</head>
<body>
<!-- form>(input+br)*2+input:s -->
	<!-- <form action="/myjsp/02request/36login-process.jsp" method="post"> -->
	<form action="<%=request.getContextPath() %>/02request/36login-process.jsp" method="post">
		아이디:<input type="text" name="userid" placeholder="id를입력하세요">
		<br>
		비밀번호:<input type="text" name="password" placeholder="타인에게 비번공유 ㄴ">
		<br>
		<input type="submit" value="로그인">
	</form>
	
<hr>	

</body>
</html>