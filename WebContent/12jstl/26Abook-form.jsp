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
<title>25Abook-form.jsp</title>
</head>
<body>
<h1>책 등록</h1>
<!-- form>(input+br)*3+input:s -->
<form action="25Aprocess.jsp" method="post">
	<input type="text" name="title" placeholder="책 제목">
	<br>
	<input type="text" name="writer" placeholder="작가">
	<br>
	<input type="number" name="price" placeholder="책 가격" value="0">
	<br>
	<input type="text" name="publisher" placeholder="출판사">
	<br>
	<input type="number" name="stock" placeholder="재고" value="1">재고
	<br>
	<input type="submit" value="리스트등록">
</form>
<br>

<a href="25Alist-book.jsp">책 목록 보기</a>

</body>
</html>