<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>02other.jsp</title>
</head>
<body>

<h1>02main에서 02other.jsp로 forward 넘어옴</h1> 
<h2>주소창에는 02main이지만 내용물은 02other</h2> 
<h3>02other 코드 출력후 02main으로 돌아가지 않음</h3> 

</body>
</html>