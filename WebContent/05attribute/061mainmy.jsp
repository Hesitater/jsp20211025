<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook"%>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06mainmy.jsp</title>
</head>
<body>


<%
MyBook book0 = new MyBook("나는 다만, 조금 느릴뿐이다", 12600);
MyBook book1 = new MyBook("나는 아직 어른이 되려면 멀었다",9900 );
MyBook book2 = new MyBook("시간은 이야이가 된다", 12400);
MyBook book3 = new MyBook("나를, 의심한다", 11700);
MyBook book4 = new MyBook("희한한 위로", 12600);

request.setAttribute("book0", book0);
request.setAttribute("book1", book1);
request.setAttribute("book2", book2);
request.setAttribute("book3", book3);
request.setAttribute("book4", book4);

%>


<h1>강세형작가 책과 가격</h1>			
<jsp:include page="061submy.jsp"></jsp:include>
<%-- 	<jsp:param value="12600" name="나는 다만, 조금 느릴뿐이다"/>
	<jsp:param value="9900" name="나는 아직 어른이 되려면 멀었다"/>
	<jsp:param value="12400" name="시간은 이야이가 된다"/>
	<jsp:param value="11700" name="나를, 의심한다"/>
	<jsp:param value="12600" name="희한한 위로"/>
	 --%>
</body>
</html>