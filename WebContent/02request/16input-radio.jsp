<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16input-radio</title>
</head>
<body>
<!-- form>(input:r)*3+input:s -->
<!-- form>(input:radio)*3+input:s -->
<form action="">
	<input type="radio" name="param" value="value1" id="">값1 <br>
	<input type="radio" name="param" value="value2" id="">값2 <br>
	<input type="radio" name="param" value="value3" id="">값3 <br>
	
	<br>
	<!-- (input:r[name=param2][value=value$])*3 -->						
	<input type="radio" name="param2" id="" value="value1">v1
	<input type="radio" name="param2" id="" value="value2">v2
	<input type="radio" name="param2" id="" value="value3">v3
	
	<input type="submit" value="전송">
</form>

<hr>
<%
String val =request.getParameter("param");
if (val != null) {
	out.print(val);
}
%>
<br>
<% 
String val2 =request.getParameter("param2");
if (val != null) {
	out.print(val2);
}

%>
</body>
</html>