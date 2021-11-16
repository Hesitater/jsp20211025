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
<title>S02BookAddServlet의 add.jsp</title>
</head>
<body>

	<!-- .container>.row>.col-2+.col-10 -->
	<div class="container">
		<div class="row">
			<div class="col-2">
				<%--side menu --%>
				<!-- ul.nav.flex-column>li.nav-item*3>a.nav-link -->
				<ul class="nav flex-column">
					<li class="nav-item">
						<a href="${pageContext.request.contextPath }/servlet08/main" class="nav-link">MAIN</a>
					</li>
					<li class="nav-item">
						<a href="${pageContext.request.contextPath }/servlet08/add" class="nav-link">ADD</a>
					</li>
					<li class="nav-item">
						<a href="${pageContext.request.contextPath }/servlet08/list" class="nav-link">LIST</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<%-- main content --%>
				<div class="tb">
					<h1 class="myHeader">책추가</h1>
				</div>
				<form method="post">
					<!-- .form-group*5>label+input.form-control -->
					<div class="form-group">
						<labal>제목</labal>
						<input type="text" class="form-control" name="title">
					</div>
					<div class="form-group">
						<labal>저자</labal>
						<input type="text" class="form-control" name="writer">
					</div>
					<div class="form-group">
						<labal>가격</labal>
						<input type="number" class="form-control" name="price">
					</div>
					<div class="form-group">
						<labal>출판사</labal>
						<input type="text" class="form-control" name="publisher">
					</div>
					<div class="form-group">
						<labal>재고</labal>
						<input type="number" class="form-control" name="stock">
					</div>
					<!-- input:s.btn.btn-primary -->
					<input type="submit" value="등록" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>



	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>












