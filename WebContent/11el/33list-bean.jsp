<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>33list-bean.jspe</title>
</head>
<body>
<%
List<Bean04> iu = new ArrayList<>();
Bean04 b1 = new Bean04();
b1.setNickName("이지금의 미아");
b1.setAge(2008);

Bean04 b2 = new Bean04();
b2.setNickName("이지금의 내손을잡아");
b2.setAge(2011);

iu.add(b1);
iu.add(b2);

//Bean04[] list = {b1,b2}; //배열로도 가능 이에따른 값은 조금다름

pageContext.setAttribute("list", iu);

%>


<%--
Bean04타입의 아이템을 2개 갖는 list를 page영역 attribute로 넣기
 --%>


<p>${list[0].nickName} : ${list[0].age}년도곡</p>
<p>${list[1].nickName} : ${list[1].age }년도곡</p>
</body>
</html>