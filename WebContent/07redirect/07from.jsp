<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>


<%

session.setAttribute("attr1", "spring");
response.sendRedirect("07to.jsp");

%>