<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<h1>mytable11 insert</h1>
<!-- form>(.form-group>label[for=input$]+input.form.control#input$[name])*3 -->
<form action="" method="post">
	<div class="form-group">
		<label for="input1"></label>
		<input type="text" class="form control" id="input1" name="name" placeholder="name">
	</div>
	<div class="form-group">
		<label for="input2"></label>
		<input type="number" class="form control" id="input2" name="age" placeholder="age">
	</div>
	<div class="form-group">
		<label for="input3"></label>
		<input type="date" class="form control" id="input3" name="birth">
	</div>
	<input type="submit"  value="입력"  class="btn btn-outline-primary">
</form>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>











