<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02page2</title>
</head>
<body>


<h1>두번째 페이지 내용들!!!!!</h1>

<%-- 02sub.jsp 내용이 include directive 사용해서 추가 --%>
<%@ include file="/03module/02sub.jsp" %>
</body>
</html>