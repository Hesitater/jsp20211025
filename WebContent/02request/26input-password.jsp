<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26input-password</title>
</head>
<body>

<h1>로그인</h1>

<!-- form>{id}+input+br+{pw}+input+br+input:s -->
<form action="" method="post">id 
	<input type="text" name="userid">
	<br>pw 
	<input type="password" name= "password">
	<br>
	<input type="submit" value="login">
</form>

<hr>

userid : <%= request.getParameter("userid")%> <br>
password :<%= request.getParameter("password") %> <br>

</body>
</html>