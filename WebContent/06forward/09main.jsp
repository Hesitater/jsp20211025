<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>09main.jsp</title>
</head>
<body>

<% 
String pageCode = request.getParameter("code");

switch(pageCode) {
			case "a" :
				// 적절한 코드 작성 - 09pagea.jsp 포워딩
%>
			<jsp:forward page="09pagea.jsp" />
			<%-- /06forward/09pagea.jsp --%>
<%				
			
			break;
			case "b" :
				// 적절한 코드 작성        - 09pageb.jsp 포워딩
%>
			<jsp:forward page="/WEB-INF/view/06forward/09pageb.jsp"></jsp:forward>
<%
			break;		
}
%> 

<%-- <%
	String pageCode = request.getParameter("code");

switch(pageCode) {
			case "a" :
				// 적절한 코드 작성 - 09pagea.jsp 포워딩
%>
			<jsp:forward page="09pagea.jsp"></jsp:forward>
<%				
			
			break;
			case "b" :
				// 적절한 코드 작성        - 09pageb.jsp 포워딩
%>
			<jsp:forward page="/WEB-INF/view/06forward/09pageb.jsp"></jsp:forward>
<%
			break;		
}
%> --%>

</body>
</html>