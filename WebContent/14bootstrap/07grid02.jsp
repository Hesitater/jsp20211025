<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
	.bg1 {
		background-color: red;
	}
	.bg2 {
		background-color: blue;
	}
	
	.bg3 {
		background-color: green;
	}
	.bg4 {
		background-color: violet;
	}
	
	.img {
		background-image: url("C:\Users\user\Desktop\iotest");
	}
</style>

<title>07grid02</title>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-3 bg1">
			<h1>Side Menu</h1>
			<!-- h3*20>lorem1 -->
			<h3>Lorem.</h3>
			<h3>Magni!</h3>
			<h3>Ut!</h3>
			<h3>Reiciendis.</h3>
			<h3>Perferendis.</h3>
			<h3>Harum.</h3>
			<h3>Tempore?</h3>
			<h3>Aliquam.</h3>
			<h3>Voluptatibus.</h3>
			<h3>Expedita.</h3>
			<h3>Aut.</h3>
			<h3>Veniam.</h3>
			<h3>Natus!</h3>
			<h3>Corporis!</h3>
			<h3>Eligendi.</h3>
			<h3>Dignissimos.</h3>
			<h3>Ipsum.</h3>
			<h3>Repellendus!</h3>
			<h3>Itaque.</h3>
			<h3>Quas.</h3>
		</div>
		<div class="col-6 bg2">
			<!-- (h1>lorem2^p>lorem20)*10 -->
			<h1><input type="text" placeholder="검색어를 입력하세요 WWW"></h1><input type="submit" value="돋보기아이콘">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat modi eum facere dolorem et recusandae ratione libero vel nostrum inventore?</p>
			<h1>Assumenda aperiam.</h1>
			<div class="container-fluid">
				<div class="row">
					<div class="col">
						<div class="col"><button class="btn btn-primary">메일</button></div>
						<div class="col"><button class="btn btn-primary">카페</button></div>
						<div class="col"><button class="btn btn-primary">블로그</button></div>
						<div class="col"><button class="btn btn-primary">지식in</button></div>
						<div class="col"><button class="btn btn-primary">쇼핑</button></div>
						<div class="col"><button class="btn btn-primary">Pay</button></div>
						<div class="col"><button class="btn btn-primary">사전</button></div>
						<div class="col"><button class="btn btn-primary">뉴스</button></div>
					</div>
					<div class="col">
						<div class="col"><button class="btn btn-primary">증권</button></div>
						<div class="col"><button class="btn btn-primary">부동산</button></div>
						<div class="col"><button class="btn btn-primary">지도</button></div>
						<div class="col"><button class="btn btn-primary">ViBE</button></div>
						<div class="col"><button class="btn btn-primary">책</button></div>
						<div class="col"><button class="btn btn-primary">웹툰</button></div>
						<div class="col"><button class="btn btn-primary">더보기</button><div class="col"><button class="btn btn-primary">화살표아이콘</button></div></div>
					</div>					
				</div>
			</div>
			<h1>Eveniet error.</h1>
			<div class="row img">
				<div class="col">
				<input type="image" src="http://placehold.it/500x100"><br>
				</div>
			</div>
			<p>Suscipit sed nesciunt totam eveniet fugit quisquam eligendi velit maiores rem tenetur ipsam illo. Dignissimos ratione quis culpa facere praesentium.</p>
			<h1>뉴스</h1>
			<div class="row">
				<div class="col"><button class="btn btn-primary">뉴스1</button></div>
				<div class="col"><button class="btn btn-primary">뉴스2</button></div>
				<div class="col"><button class="btn btn-primary">뉴스3</button></div>
				<div class="col"><button class="btn btn-primary">뉴스4</button></div>
				<div class="col"><button class="btn btn-primary">뉴스5</button></div>
				<div class="col"><button class="btn btn-primary">뉴스6</button></div>
			</div>
			<h1>신문들</h1>
				<div class="row">
					<div class="col">
						<button btn="" btn-primary="">신문1</button>
					</div>
					<div class="col">
						<button btn="" btn-primary="">신문2</button>
					</div>
					<div class="col">
						<button btn="" btn-primary="">신문3</button>
					</div>
					<div class="col">
						<button btn="" btn-primary="">신문4</button>
					</div>
					<div class="col">
						<button btn="" btn-primary="">신문5</button>
					</div>
					<div class="col">
						<button btn="" btn-primary="">신문6</button>
					</div>
				</div>
			<h1>Esse quasi.</h1>
			<div class="row">
				<div class="col">
					<button btn="" btn-primary="">JOB</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">태그</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">여행</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">과학</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">리빙</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">건강</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">비즈니스</button>
				</div>
				<div class="col">
					<button btn="" btn-primary="">연애·결혼</button>
				</div>
			</div>
			<h1>Beatae sequi.</h1>
			<p>Minima debitis velit magnam quo aut reprehenderit praesentium excepturi aliquam maiores molestias architecto provident voluptatem ratione atque cumque hic sapiente.</p>
			<h1>Dolores reiciendis!</h1>
			<p>Nisi dolorem necessitatibus rem eum alias sequi accusamus quas sit dignissimos natus aliquam totam esse dolor? Molestiae aliquam ducimus incidunt?</p>
			<h1>Quae voluptate.</h1>
			<p>Labore facere dicta incidunt eaque dignissimos iusto quibusdam nemo voluptatum rem fugiat libero at recusandae! Nostrum velit nisi excepturi atque?</p>
		</div>
		<div class="col-2 bg3">
			<h1>광고</h1>
			<h3>1</h3>
			<h3>2</h3>
			<h3>3</h3>
			<h3>4</h3>
			<textarea name="" id="" cols="30" rows="10">여기에 광고자리 넣어서 광고때릴거임 그러니깐 공간 남겨놓고 나중에 무언거를 삽입해야할께..?
			</textarea>
			<input type="image" src="http://placehold.it/200x200"><br>
			<input type="image" src="http://placehold.it/170x200"><br>
		</div>
		<div class="col bg4">
			<h1>빈공간</h1>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>