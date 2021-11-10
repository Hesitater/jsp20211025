<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<style>
	table {
		border-collapse: collapse;
		width: 100%;
		background-image: url('p4.jpg'); 
		background-size: 50%;
		background-repeat: no-repeat;
	}
	table,  td {
		border: 1px solid black;
	}
	th {
		background-color: violet;
		border : 2px solid blue;
	}

</style>

<title>24foreach1</title>
</head>
<body>
<%
List<Bean06> list = new ArrayList<>();
list.add(new Bean06("나는 다만, 조금 느릴뿐이다", "강", 12600));
list.add(new Bean06("나는 아직 어른이 되려면 멀었다", "세", 9900));
list.add(new Bean06("시간은 이야기가 된다", "형", 12400));
list.add(new Bean06("나를, 의심하다", "작", 11700));
list.add(new Bean06("희한한 위로", "가", 12600));
list.add(new Bean06("데미안", "헤르만 헤세", 7200));

request.setAttribute("books", list);
%>

<h3>foreach</h3>
<!-- table>tr>th*4^tr*6>td*4 -->
<table>
	<tr>
		<th>#</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
	</tr>
	<c:forEach items="${books }" var="book" varStatus="s">
	<tr>
		<td>${s.count  }</td>
		<td>${book.title }</td>
		<td>${book.writer }</td>
		<td>${book.price }</td>
	</tr>
	</c:forEach>	
</table>

</body>
</html>

















