<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>26list-ex.jsp</title>
</head>
<body>

<%
List<String> list1 = new ArrayList<>();
list1.add("v");
list1.add("suga");
list1.add("rm");

String[] arr1 = {"jk", "jin", "jimin", "hope"};

pageContext.setAttribute("data1", list1);
pageContext.setAttribute("data2", arr1);
%>

<%--d v, suga, rm, jk, jin, jimin, hope --%>

<p>list1 : ${data1 }</p>
<p>arr1 : ${data2 }</p>

<p>\${data1[0] : ${data1[0] }</p>
<p>\${data1[1]} : ${data1[1]}</p>
<p>\${data1[2] } : ${data1[2] }</p>
<p>\${data2[0] } : ${data2[0] } </p>
<p>\${data2[1] } : ${data2[1] }</p>
<p>\${data2[2] } : ${data2[2] } </p>
<p>\${data2[3] } : ${data2[3] }</p>

</body>
</html>