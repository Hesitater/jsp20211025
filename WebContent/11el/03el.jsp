<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>03el.jsp</title>
</head>
<body>
<h1>expression language(EL)</h1>

<p>작성법 : \${attribute }</p>
<p>jsp에 출력용으로 사용됨</p>

<hr>
<%
pageContext.setAttribute("pageAttr1", "pageVal1");
pageContext.setAttribute("pageAttr2", 100000);
pageContext.setAttribute("pageAttr3", true);
pageContext.setAttribute("pageAttr10", "true");
%>

<p>jave code : <%=pageContext.getAttribute("pageAttr1") %></p>
<p>el : ${pageAttr1 }</p>
<p>java code : <%=pageContext.getAttribute("pageAttr2") %></p>
<p>el : ${pageAttr2 }</p>
<p>java code : <%=pageContext.getAttribute("pageAttr3") %></p>
<p>el : ${pageAttr3 }</p>
<p>java code : <%=pageContext.getAttribute("pageAttr10") %></p>
<p>el : ${pageAttr10 }</p>
<p>java code : <%=pageContext.getAttribute("pageAttr4") %></p>
<p>el : ${pageAttr4 }</p>

</body>
</html>




















