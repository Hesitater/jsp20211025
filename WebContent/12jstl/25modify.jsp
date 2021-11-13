<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<style>
input::-webkit-input-placeholder {
	border-color: teal;
	color: purple;
	font-style: italic;
	font-weight: bold;
	background-color: skyblue;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/mystyle.css">

<title>Insert title here</title>
</head>
<body>

	<c:set value="${applicationScope.books[param.index] }" var="book" />


	<%-- <form action="25modify-process.jsp" method="post">
	<input type="hidden" name="index" value="${param.index }"> 
	<input type="text" name="title" placeholder="책 제목" value="${book.title }">
	<br>
	<input type="text" name="writer" placeholder="저자" value="${book.writer }">
	<br>
	<input type="number" name="price" placeholder="가격" value="${book.price }"> 원
	<br>
	<input type="text" name="publisher" placeholder="출판사" value="${book.publisher }">
	<br>
	<input type="number" name="stock" value="${book.stock }"> 재고
	<br>
	<input type="submit" value="수정">
</form> --%>
	<hr>
	<hr>
	<hr>
	<div class="container">
		<a class="btn btn-secondary btn-block" href="25list-book-tag.jsp">책 목록 보기</a>
		<div class="tb">
			<h1 class="myHeader">책수정 해주시겠스므니까?</h1>
		</div>
		<div class="row">
			<div class="col-12">
				<form action="25modify-process.jsp" method="post">
					<div class="form-group">
						<label for="titleInput1"></label>
						<input type="hidden" name="index" class="form-control" id="titleInput1" value="${param.index }">
						<small id="titleHelp" class="form-text text-muted">${param.index +1}</small>
					</div>
					<div class="form-group">
						<label for="titleInput1">책제목</label>
						<input type="text" name="title" class="form-control" id="titleInput1" placeholder="title" value="${book.title }">
						<small id="titleHelp" class="form-text text-muted">책 제목을 입력해주세요</small>
					</div>
					<div class="form-group">
						<label for="writerInput1">작성자</label>
						<input type="text" name="writer" class="form-control" id="WriterInput1" placeholder="writer" value="${book.writer }">
						<sub>글쓴이입니다</sub>
					</div>
					<div class="form-group">
						<label for="priceInput1">가격</label>
						<input type="number" name="price" class="form-control" id="priceInput1" placeholder="price" value="${book.price }">
						<sup>10000원이상 가능</sup>
					</div>
					<div class="form-group">
						<label for="publisherInput1">출판사</label>
						<input type="text" name="publisher" class="form-control" id="publisherInput1" placeholder="publisher" value="${book.publisher }"">
						<ins>악덕출판사 ㄴ</ins>
					</div>
					<div class="form-group">
						<label for="stockInput1">재고</label>
						<input type="number" name="stock" class="form-control" id="stockInput1" placeholder="stock" value="${book.stock }">
						<del>악성재고 ㄷㄷ덜덜</del>
					</div>
					<!-- 					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Check
							me out</label> -->
			</div>
			<button type="submit" class="btn btn-secondary btn-lg">수정</button>
			</form>
		</div>
	</div>
	</div>

	<br>

		<div class="tb">
			<h1 class="myHeader">책수정 해주시겠스므니까?</h1>
		</div>
	<a href="25list-book-tag.jsp">책 목록 보기</a>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>