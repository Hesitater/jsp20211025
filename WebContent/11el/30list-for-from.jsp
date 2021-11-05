<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>



<%
List<String> list = new ArrayList<>();
list.add("jenny");
list.add("lisa");
list.add("jisoo");
list.add("rose");


session.setAttribute("data", list);
response.sendRedirect("30list-for-to.jsp");
%>






