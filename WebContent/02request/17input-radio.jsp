<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17input-radio</title>
</head>
<body>
<p>좋아하는 색 선택 (하나만)</p>

<!-- form>(input:r[name=color][value])*5+input:s -->
<form action="">
	<input type="radio" name="color" id="" value="red"> 빨강
	<input type="radio" name="color" id="" value="blue"> 파랑
	<input type="radio" name="color" id="" value="yellow"> 노랑 
	<input type="radio" name="color" id="" value="green"> 녹색
	<input type="radio" name="color" id="" value="deeppink"> 핑크
	<input type="submit" value="전송">
</form>

<hr>
<%-- 선택된 색이 출력되도록 java 코드 작성 --%>
<%
String color = request.getParameter("color");
if ( color != null) {
	out.print(color);
}
%>
<p>좋아하는 색 : <%= color %></p>
<div style="width:100px; height:100px; 
border:5px solid violet; background-color : <%=color %>">
</div>

</body>
</html>