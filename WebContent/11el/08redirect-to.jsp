<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08redirect-to.jsp</title>
</head>
<body>

<h1>08redirect-to.jsp</h1>

<p>el attr1 : ${sesAttr1 } </p>
<p>el attr2 : ${sesAttr2 }</p>
<p>el attr3 : ${sesAttr3 }</p>

</body>
</html>