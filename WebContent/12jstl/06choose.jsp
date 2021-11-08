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
<title>06choose.jsp</title>
</head>
<body>

<%-- age 파라미터의 값이 20이상이면 투표가능함 그렇지 않으면 투표 불가능 --%>

<c:choose>
	<c:when test="${param.age >= 20 }">
		<p>${param.age }살은 투표가능</p>
	</c:when>
	<c:otherwise>
		<p>20세 미만은 투표 안되요</p>
	</c:otherwise>
</c:choose>

<hr>

<h2> c:if 문</h2>

<c:if test="${param.age >=20 }">
	<p>20살 이상 투표가능</p>
</c:if>
<c:if test="${param.age <20 }">
	<p>투표가 불가능입니다.</p>
</c:if>	

<hr>

<h2>삼항 연산자</h2>
<p>
${param.age >= 20? '투표가능해요~' : '죄송합니다 투표 안되요'}
</p>

</body>
</html>