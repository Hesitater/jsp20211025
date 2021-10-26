<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%! private int add( int a, int b) {
	return a + b;
} %>

<%! public int subtract( int a, int b)  {
	return a - b;
}
%>

<%! private int multiply(int a, int b) {
	return a * b;
}

 private double divide( double a, double b) {
	return a / b;
} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14declaration</title>
</head>
<body>
<h1> 선언부 declaration</h1>

<%= add(5,7) %><br>             <%-- 12 --%>
<%= subtract(10, 2) %><br>		<%-- 8 --%>
<%= multiply(10,25) %><br>		<%-- 250 --%>
<%= divide(99,33) %>			<%-- 33 --%>
<li><%= multiply(2,1) %></li>

</body>
</html>