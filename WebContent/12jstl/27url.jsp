<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>27url.jsp</title>
</head>
<body>
<h1>jstl url tag</h1>
<hr>
<a href="https://www.naver.com">네이버1</a>

<br>

<a href="https://www.naver.com">네이버2</a>

<br>

<c:url value="https://www.naver.com" var="naverUrl"></c:url>

<a href="${naverUrl }">\${naverUrl }</a>

<hr>

<c:url value="25book-form.jsp" var="addBookUrl"></c:url>
<a href="${addBookUrl }">책 추가하기3</a>

<br>

${addBookUrl }

<hr>

<c:url value="25book-form.jsp" />

<hr>

<a href="<%=request.getContextPath() %>/12jstl/25book-form.jsp">책 추가하기</a>

<br>

<a href="<c:url value="/12jstl/25book-form.jsp" />">책 추가하기</a>

<br>
<c:url value="/12jstl/25book-form.jsp" var="addBookUrl2"/>

<a href="${addBookUrl2 }">\${addBookUrl2 }</a>

</body>
</html>
















