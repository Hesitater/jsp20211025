<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>30login.jsp</title>
</head>
<body>
<!-- form>input*2+input:s -->
<form action="" method="post">
	<input type="text" name="id"> <br>
	<input type="password" name="password"> <br>
	<input type="submit" value="Login">
</form>

<hr>
id :<%=request.getParameter("id") %> <br>
pw :<%=request.getParameter("password") %>  <br>

<%
	String userid =request.getParameter("id");
	String password =request.getParameter("password");


	if( userid != null && password != null) {
		if( userid.equals("myid") && password.equals("mypassword") ) {
			out.print("로그인 성공 메시지 출력");
		} else {
			out.print("아이디나 패스워드가 일치하지 않습니다");		
	}
}
%>	





<%--
id, password 파라미터를 post 방식 전송
 --%>
 
 <%--
 id가 myid
 password 가 mypassword 일 때만
 로그인 성공 메시지 출력
 그렇지 않으면
 '아이디나 패스워드가 일치하지 않습니다.' 메시지 출력
  --%>
</body>
</html>