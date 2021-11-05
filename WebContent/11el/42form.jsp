<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>42form.jsp</title>
</head>
<body>
<form action="42view.jsp" method="post">
<%-- input:text name 파라미터 --%>
<%-- input:checkbox food 파라미터 --%>
<input type="text" name="name" placeholder="이름"> <br>
<input type="checkbox" name="food" value="음식1">음식1 <br>
<input type="checkbox" name="food" value="음식2">음식2 <br>
<input type="checkbox" name="food" value="음식3">음식3 <br>

<input type="submit" value="전송">
</form>
</body>
</html>