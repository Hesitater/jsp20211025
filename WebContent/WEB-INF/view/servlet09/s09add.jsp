<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/mystyle.css">
<style>
input::-webkit-input-placeholder {
	color: red;
	font-style: italic;
	background-color: violet;
}
</style>

<title>S05BookAddServlet 의 s09add.jsp</title>
</head>
<body>

	<!-- .container>.row>.col-2+.col-10 -->
	<div class="container">
		<div class="row">
			<div class="col-2">
				<%--side menu --%>
				<ul class="nav flex-column  nav-pills nav-fill">
					<li class="nav-item">
						<a class="nav-link active" href="${pageContext.request.contextPath }/servlet09/s09main">MAIN</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/servlet09/s09add">ADD</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/servlet09/s09list">LIST</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<div class="tb">
					<h1 class="myHeader">책추가</h1>
				</div>
				<form method="post">
					<div class="form-group">
						<label for="titleInput1">책제목</label>
						<input type="text" name="title" class="form-control" id="titleInput1" placeholder="title">
						<small id="titleHelp" class="form-text text-muted">책 제목을 입력해주세요</small>
					</div>
					<div class="form-group">
						<label for="writerInput1">작성자</label>
						<input type="text" name="writer" class="form-control" id="WriterInput1" placeholder="writer">
						<sub>작성자 입력해주세요</sub>
					</div>
					<div class="form-group">
						<label for="priceInput1">가격</label>
						<input type="number" name="price" class="form-control" id="priceInput1" placeholder="price">
						<sup>가격을 입력해주세요</sup>
					</div>
					<div class="form-group">
						<label for="publisherInput1">출판사</label>
						<input type="text" name="publisher" class="form-control" id="publisherInput1" placeholder="publisher">
						<ins>출판사 입력</ins>
					</div>
					<div class="form-group">
						<label for="stockInput1">재고</label>
						<input type="number" name="stock" class="form-control" id="stockInput1" placeholder="stock">
						<del>악성재고 ㄷㄷ덜덜</del>
					</div>
					<input type="submit" value="등록" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>







