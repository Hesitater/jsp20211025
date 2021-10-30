<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07request-param-ex-main</title>
</head>
<body>
<h1>main ex contents</h1>

<%--
쿼리 스트링 바꾸지 않고
?city=jeju

sub.jsp에서

food : apple 이라고 출력되도록 jsp:include 요소의 content를 변경해 보세요
 --%>

<%-- <jsp:include page="07request-param-ex-sub.jsp"></jsp:include> --%>
<jsp:include page="07request-param-ex-sub.jsp">
	<jsp:param name="food" value="apple" ></jsp:param>
	<jsp:param name="city" value="jeju"></jsp:param>
	<jsp:param value="bts" name="group"></jsp:param>
</jsp:include>

<br>
food : <%=request.getParameter("food") %>
</body>
</html>