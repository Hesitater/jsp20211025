<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%request.setCharacterEncoding("utf-8");%>

<%
Map<String, String> map =new HashMap<>(); 
map.put("param1","자바");    //값을 넣어줌
map.put("param2","hello world");
map.put("param3","스프링");

//코드 작성
request.setAttribute("name", map);   //attribute에 넣음
RequestDispatcher dispatcher = request.getRequestDispatcher("15to3.jsp");//""페이지로 넘어감
dispatcher.forward(request,response);


response.sendRedirect("15to3.jsp");


%>
