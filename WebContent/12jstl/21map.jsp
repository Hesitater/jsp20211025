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
<title>21map.jsp</title>
</head>
<body>

<%
Map<String, String> map = new HashMap<>();
map.put("song","asap");
map.put("food","choco");
map.put("city","seoul");

pageContext.setAttribute("datas", map);
%>

<ul>
<c:forEach items="${datas }" var="item">
	<li>${item.key }</li>	
</c:forEach>
</ul>
<hr>
<ul>
<c:forEach items="${datas }" var="data">
	<li>${data.value }</li>
</c:forEach>
</ul>

<%-- foreach 이용 2번
<ul>
	<li>song</li>
	<li>food</li>
	<li>city</li>
</ul>
<ul>
	<li>choco</li>
	<li>asap</li>
	<li>city</li>
</ul>
 --%>



</body>
</html>


















