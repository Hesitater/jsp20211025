<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿</h1>
	<p>자바코드 작성 가능 </p>
	
	<% 
	// 자바코드 작성 가능
	System.out.println("hello jsp");
	
	for (int i = 0; i < 5; i++) {
		out.write("<p>스크립트릿으로 작성한 html 코드</p>\r\n");
	}
	%>
	
<%
	int sum = 0;
	for (int i = 0; i <=10; i++) {
		sum = sum + i;
	}
%>
 1부터 10까지의 합은 <%=sum %>입니다.
</body>
</html>