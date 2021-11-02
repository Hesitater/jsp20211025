<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07invalidate1.jsp</title>
</head>
<body>

<form action="">
	<select name="song" id="">
		<option value="추억은 아름다운 기억">추억은 아름다운 기억</option>
		<option value="스물 두번째 길">스물 두번째 길</option>
		<option value="편한가봐">편한가봐</option>
		<option value="오늘 서울은 하루종일 맑음">오늘 서울은 하루종일 맑음</option>
		<option value="내 손을 잡아">내 손을 잡아</option>
		<option value="미아">미아</option>
	</select>
	<br>
	<input type="submit" value="등록">
</form>

<%
	Set<String> songs = (Set<String>) session.getAttribute("songs");
if (songs == null) {
	songs= new HashSet<>();
	session.setAttribute("songs", songs);
}

String song = request.getParameter("song");
if (song != null) {
		songs.add(song);
}
%>
<hr>

<ul>
<%
	for (String item : songs) {
%>
	<li><%=item %></li>
<%
	}
%>		
</ul>	

<a href="07invalidate2.jsp"> 세션 지우기</a>

</body>
</html>








