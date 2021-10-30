<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>04include-ex-main</title>
</head>
<body>

<%-- sub.jsp 위치 --%>
<%-- include 액션태그를 사용 --%>
<%--상대경로 --%>
<jsp:include page="04include-ex-sub.jsp"></jsp:include>
<%-- 절대경로 --%>
<jsp:include page="/03module/04include-ex-sub.jsp"></jsp:include>


<div>
<h1>main 페이지 컨텐츠</h1>
</div>

</body>
</html>