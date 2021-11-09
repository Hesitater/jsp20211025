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
<title>23varStatus.jsp</title>
</head>
<body>

<%
pageContext.setAttribute("data", new String[] {"water", "jeju", "seoul", "paris", "milk"});
%>

<%-- varStatus 활용 해서
	<ul>
		<li>1 : seoul</li>
		<li>2 : paris</li>
	</ul>
 --%>
<ul>
<c:forEach begin="2" end="3" items="${data }" var="item" varStatus="status"> 
		<li>${status.count } : ${item }  : ${status.index }</li>	
</c:forEach>
</ul>

<hr>
<ul>

<c:forEach begin="2" end="3" items="${data }" var="item" varStatus="status">
		<li>${status.index -1 } : ${data[status.index]}
</li>
</c:forEach>
</ul>

</body>
</html>






