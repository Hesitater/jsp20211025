<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<style>
	table, td, th {
			border : 1px solid; black;
	}
	table {
		width: 100%;
		border-collapse: collapse;
	}
</style>
<title>22varStatus 연습</title>
</head>
<body>
<%
pageContext.setAttribute("list", new String[] {"rm","jimin", "jin", "v"});
%>

<c:forEach items="${list }" var="item" varStatus="status">
	${status.index } : ${status.current }= ${item } <br>
</c:forEach>

<hr>
	<!-- table>tr>th*9 -->
	<table>
		<tr>
			<th>item</th>
			<th>index</th>
			<th>count</th>
			<th>begin</th>
			<th>end</th>
		</tr>
		<c:forEach items="${list }" var="item" varStatus="status">
			<!-- tr>td*9 -->
			<tr>
				<td>${item }</td>
				<td>${status.index }</td>
				<td>${status.count }</td>
				<td>${status.begin }</td>
				<td>${status.end }</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<table>
			<tr>
				<th>step</th>
				<th>first</th>
				<th>last</th>
				<th>current</th>
			</tr>
			<c:forEach items="${list }" var="item" varStatus="status">
			<tr>
				<td>${status.step }</td>
				<td>${status.first }</td>
				<td>${status.last }</td>
				<td>${status.current }</td>
			</tr>
			</c:forEach>
	</table>

</body>
</html>






















