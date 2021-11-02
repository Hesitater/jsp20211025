<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<script>
	var id = document.querySelector("#id").val;
	function buttonClick () {
		if (id != "iamuser") {
			alert('잘못입력되었습니다');
		} else {
			window.location.href = "11to.jsp";
			/*<jsp:forward page="11to.jsp"></jsp:forward>*/
		}
	};
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>11from.jsp</title>
</head>
<body>
<!-- form>input*2+input:s -->
<form action="11to.jsp" method="post">
	<input type="text" name="userid" placeholder="아이디" id="id"> <br>
	<input type="password" name="password" placeholder="비번"> <br> 
	<input type="submit" value="로그인" onclick="buttonClick()"> <br>
	
	
</form>
</body>
</html>