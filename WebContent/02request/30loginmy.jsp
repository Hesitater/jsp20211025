<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>30loginmy</title>
</head>
<body>
<!-- form>input*2+input:s -->
<form action="" method="post">
	<input type="text" name="userid">	<br>
	<input type="password" name="userpw"> <br>
	<input type="submit" value="Login"> <br>
</form>

<hr>
id :<%=request.getParameter("userid") %> <br>
pw :<%=request.getParameter("userpw") %>  <br>

<%String userid =request.getParameter("userid"); %>
<%String userpw =request.getParameter("userpw"); %>

<%
	if( userid != null && userpw != null) {
	if( userid.equals("myid") && userpw.equals("mypassword") ) {
%>
		<script>alert("로그인 성공 메시지 출력");</script>
<% 
	} else {
%>	
		<script>alert('아이디나 패스워드가 일치하지 않습니다');	</script>	
<%
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