<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>


<%
String code =request.getParameter("code");
%>

<% 
	if( "food".equals(code)) {
		String[] listfood  = {"김치찌개","떡볶이", "삼계탕", "쫄면", "순대국"};

		request.setAttribute("food", listfood);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<%
	} else if ("song".equals(code)) {
		List<String> list = new ArrayList<>();
		list.add("추억은 아름다운 기억");
		list.add("스물 두번째 길");
		list.add("편한가봐");
		list.add("오늘 서울은 하루 종일 맑음");
		list.add("미아");
		list.add("내 손을 잡아");

		request.setAttribute("song", list);
%>

<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
	}
%>


