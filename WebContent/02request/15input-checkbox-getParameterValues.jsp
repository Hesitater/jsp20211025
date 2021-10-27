<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15input-checkbox-getParameterValues</title>
</head>
<body>


<!--code 작성  -->
<!-- form>(input:c+br)*5+(input:s) -->
<form action="">
	<input type="checkbox" name="movie" value="닥터 스트레인지" id=""> 닥터 스트레인지<br>
	<input type="checkbox" name="movie" value="디서비디언스" id=""> 디서비디언스 <br>
	<input type="checkbox" name="movie" value="스포트라이트"  id=""> 스포트라이트<br>
	<input type="checkbox" name="movie" value="어바웃 타임"  id=""> 어바웃 타임<br>
	<input type="checkbox" name="movie" value="서약"  id=""> 서약<br>
	<input type="checkbox" name="movie" value="굿모닝 에브리원"  id=""> 굿모닝 에브리원<br>
	<input type="checkbox" name="movie" value="시간 여행자의 아내"  id=""> 시간 여행자의 아내<br>
	<input type="checkbox" name="movie" value="노트북"  id=""> 노트북<br>
	<input type="checkbox" name="movie" value="퀸카로 살아 남는 법"  id=""> 퀸카로 살아 남는 법<br>
	<input type="checkbox" name="movie" value="우리 사랑해도 될까요?"  id=""> 우리 사랑해도 될까요?<br>
	<br>
	<input type="submit" value="내가본 영화">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if (movies != null) {
	for (String movie : movies) {
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>
</body>
</html>