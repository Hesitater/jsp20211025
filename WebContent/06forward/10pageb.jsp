<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<style>
	.menu {
		display: flex;
		padding: 0px;
		margin: 0px;
		margin-bottom: 10px;
		list-style: none;
		background-color: gray;
	}
	
	.menu-item {
		padding: 15px;
		text-align: center;
		background-color: black;
	}
	
	.menu-item a {
		color: white;
		text-decoration: none;
		font-weight: bold;
	}
	
	.menu-item:hover {
		background-color: green;
	}
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>10pageb.jsp</title>
</head>
<body>
<h1>page b (song)</h1>
<%
List<String> songList = (List<String>) request.getAttribute("song");
%>
<%-- songList의 값들을 출력 --%>
<div>
<ul class="menu">
<%
	for (String song : songList) {
%>
	<li class="menu-item">
	<a href=""><%=song %></a>
	</li>
<%		
	}
%>
</ul>
</div>

<hr>
<ul>
<%
	for( String song : songList) {
%>
	<li><%=song %></li>
<%
	}
%>
</ul>
<hr><hr>
<ul>
<%
	for( int i = 0; i < songList.size(); i++) {
%>
		<li><%=songList.get(i) %></li>
<%
	}
%>
</ul>






</body>
</html>