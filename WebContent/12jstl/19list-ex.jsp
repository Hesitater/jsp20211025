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
<title>19list-ex.jsp</title>
</head>
<body>

<%
List<String> datas = new ArrayList<>();
datas.add("korea");
datas.add("china");
datas.add("us");
datas.add("uk");
datas.add("france");

pageContext.setAttribute("country", datas);
%>

<ul>
<c:forEach items="${country }" var="item">
	<li>${item }</li>	
</c:forEach>
</ul>

<hr>
 <ul>
 <c:forEach begin="1" end="3" items="${country }" var="item">
 		<li>${item }</li>
 </c:forEach>
 </ul>
 
<%-- foreach 로
<ul>
	<li>korea</li>
		.....
	<li>france</li>
</ul>
 --%>


<%-- foreach 로
<ul>
	<li>china</li>
	<li>us</li>
	<li>uk</li>
</ul>
 --%>

</body>
</html>











