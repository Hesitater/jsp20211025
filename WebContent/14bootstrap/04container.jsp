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
<style>
	.container {
		background-color: skyblue;
	}
	
	div {
		background-color: silver;
	}
	.container-fluid {
		background-color: springGreen;
	}

</style>

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>04container.jsp</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate harum incidunt similique facere magnam unde voluptatem quasi blanditiis enim fugiat perferendis aspernatur hic doloribus dolorem iste molestiae sapiente. Id tenetur.</div>

<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero corporis quae harum natus eum exercitationem veritatis magni ut vitae sunt! Totam incidunt delectus ipsa placeat adipisci facere iusto impedit ex!</div>

<!-- .container-fluid>lorem -->
<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam earum libero sunt assumenda neque perspiciatis tenetur dignissimos architecto similique vel officiis corporis ea maiores voluptates eos harum rerum molestiae perferendis.</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
























