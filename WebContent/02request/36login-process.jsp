<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>36login-process</title>
</head>
<body>
<%
String userid = request.getParameter("userid");
String password = request.getParameter("password");
%>
<h1>회원 정보</h1>
id : <%=userid %> <br>
pw : <%=password%> <br>

<%
	if ( userid != null && password != null) {
		if( userid.equals("myid") && password.equals("password") ) {
%>
		<script>alert('로그인성공했네 ㅋㅋ;');</script>
<% 
		} else {
			out.print("<script>");
			out.print("alert('아이디or비번 잘못씀 다시써라 ㅠ')");
			out.print("</script>");
		}
	}

%>
<hr>
<!-- <a href="/myjsp/02request/35login-form.jsp">35번 파일로 돌아가기</a> -->
<a href="<%=request.getContextPath() %>/02request/35login-form.jsp">35번 파일로 돌아가기</a>
</body>
</html>