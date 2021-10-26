<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01request</title>
</head>
<body>
<h1>Request 기본객체(implicit object)</h1>
<h2>HttpServletRequest 타입</h2>

<%= request %>
<hr>
클라이언트 ip = <%= request.getRemoteAddr() %><br>
요청정보 길이 = <%= request.getContentLength() %><br>
요청정보 인코딩 = <%= request.getCharacterEncoding() %><br>
요청정보 컨텐츠타입 = <%=request.getContentType() %><br>
요청정보 프로토콜 = <%= request.getProtocol() %><br>
요청정보 전송방식 = <%= request.getMethod() %><br>
요청 URI = <%= request.getRequestURI() %><br>
컨텍스트 경로 =<%= request.getContentLength()%><br>
서버이름 =  <%= request.getServerName() %><br>
서버 포트 = <%= request.getServerPort() %><br>
</body>
</html>