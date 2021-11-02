<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%request.setCharacterEncoding("utf-8");%>

<%

String param = "param=" +URLEncoder.encode("스프링","UTF-8");
String param1 = "param1=" + URLEncoder.encode("강아지같다!@#$%^&*","utf-8");
String location = "14to.jsp";
String loc = location + "?" + param + "&" + param1;
response.sendRedirect(loc);

%>