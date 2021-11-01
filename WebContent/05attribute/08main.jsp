<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08main</title>
</head>
<body>

<%
List<MyBook> list = new ArrayList<>();
list.add(new MyBook("나는 다만, 조금 느릴뿐이다", 12600));
list.add(new MyBook("나는 아직 어른이 되려면 멀었다",9900));
list.add(new MyBook("시간은 이야이가 된다", 12400));
list.add(new MyBook("나를, 의심한다", 11700));
list.add(new MyBook("희한한 위로", 12600));
%>

<%
	request.setAttribute("books", list);
%>
	<jsp:include page="08sub.jsp"></jsp:include>

</body>
</html>