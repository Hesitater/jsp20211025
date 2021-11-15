<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>15carousel1.jsp</title>
</head>
<body>

	<!-- .container>.row>.col*2 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<!-- h1>lorem5^p*2>lorem -->
				<h1>사랑의 물리학</h1>
				<p>질량의 크기는 부피와 비례하지 않는다</p><br>
				<p>제비꽃 같이 조그만한 그 계집애가 꽃잎같이 하늘거리는 그 계집애가</p><br>
				<p>지구보다 더 큰 질량으로 나를 끌어 당긴다</p><br>
				<p>순간, 나는</p><br>
				<p>뉴턴의 사과처럼</p><br>
				<p>사정없이 그녀에게로 굴러 떨어졌다</p><br>
				<p>쿵 소리를 내며, 쿵쿵 소리를 내며</p><br>
				<p>심장이 하늘에서 땅까지 아찔한 진자 운동을 계속하였다</p><br>
				<p>첫사랑이었다.</p><br>
			</div>
			<div class="col">
				<div id="carouselPoem" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselPoem" data-slide-to="0" class="active"></li>
						<li data-target="#carouselPoem" data-slide-to="1"></li>
						<li data-target="#carouselPoem" data-slide-to="2"></li>
						<li data-target="#carouselPoem" data-slide-to="3"></li>
						<li data-target="#carouselPoem" data-slide-to="4"></li>
						
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${pageContext.request.contextPath }/resource/image/p1.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/p2.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/p3.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/p4.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/p5.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-target="#carouselPoem" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-target="#carouselPoem" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</button>
				</div>

			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


</body>
</html>

















