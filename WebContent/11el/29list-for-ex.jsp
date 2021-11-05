<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>29list-for-ex.jsp</title>
</head>
<body>

<%
List<String> list = new ArrayList<String>();
list.add("jenny");
list.add("jisoo");
list.add("lisa");
list.add("Roseanner Park");

pageContext.setAttribute("data", list);
%>
<%--
0 : jenny 
1 : jisoo
2 : lisa
3 : Roseanner Park
 --%>
<%
for ( int i = 0; i <list.size(); i ++) {
	pageContext.setAttribute("index", i);
%>
	<p>${index} : ${data[index] }</p>
<%
}
%>

</body>
</html>