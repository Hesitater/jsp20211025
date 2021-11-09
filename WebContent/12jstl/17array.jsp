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
<title>17array.jsp</title>
</head>
<body>
<%
pageContext.setAttribute("array", new String[] {"mvc", "itzy", "asap", "mafia", "spring"});
%>
<ol>
<c:forEach begin="1" end="3" items="${array}" var="idol">
	<li>${idol }</li>
</c:forEach>
</ol>

<hr>
<h1>\${not empty param.num1 && not empty param.num2 }</h1>
<c:if test="${not empty param.num1 && not empty param.num2 }">
<ol>
<c:forEach begin="${param.num1 }"  end="${param.num2 }" items="${array }" var="idol">
	<li>${idol }</li>
</c:forEach>
</ol>
</c:if>

<%-- foreach 사용
<ol>
	<li>itzy</li>
	<li>asap</li>
	<li>mafia</li>
</ol>
 --%>


</body>
</html>