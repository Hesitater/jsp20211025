<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12expression</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
map.put("java", "lang");
map.put("css", "style");
map.put("Spring", "framework");
map.put("javascript", "script" );
%>

<%-- code 작성 --%>
<ul>
<% 
 for (Map.Entry<String, String> entry : map.entrySet() ) {
%>
	<li><%= entry.getKey()%> : <%= entry.getValue() %></li>
<%
 }
%>
</ul>

<hr>

<% 
 for (Map.Entry<String, String> entry : map.entrySet() ) {
//	 out.print("<h1>" + entry.getKey() + " :" + entry.getValue() + "</h1>");
	 out.print("<li>" + entry.getKey() + " :" + entry.getValue() + "</li>");
 }
%>
</body>
</html>