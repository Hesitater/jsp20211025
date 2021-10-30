<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05request-main</title>
</head>
<body>

<div>
main contents.....
</div>

name : <%= request.getParameter("name") %>

<jsp:include page="/03module/05request-sub.jsp"></jsp:include>

</body>
</html>