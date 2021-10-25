<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* css 주석*/
</style>
</head>
<body>
<h1>주석</h1>
<!-- html 주석 -->
<!-- 소스보기하면 보이니 주의! -->

<%
//자바 주석
/*
	자바 여러 줄 주석
*/
%>

<%-- jsp 주석 --%>
<%-- --%>

<%
	int sum = 0;
	for ( int i = 0; i <=10; i++ ) {
		sum = sum + i;
	}
		out.println("1부터10까지 합은" + sum + "입니다");
%>
<hr>
<%=1+2+3+4+5+6+7+8+9+10 %>
<script>
// js 주석
/*
 * js 여러줄 주석
 
 */
</script>
</body>
</html>