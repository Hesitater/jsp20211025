<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>50logical-operator와 같음</title>
</head>
<body>

<h2>&&  두항의 true일때만 true, 나머지는 모두 false</h2>
<p>\${true && true } : ${true && true }</p>
<p>\${true && false } : ${true && false }</p>
<p>\${false && false} : ${false && true }</p>
<p>\${false && false} : ${false && false }</p>

<h2>and 두항의 true일때만 true, 나머지는 모두 false</h2>
<p>\${true and true } : ${true and true }</p>
<p>\${true and false } : ${true and false }</p>
<p>\${false and false} : ${false and true }</p>
<p>\${false and false} : ${false and false }</p>

<h2>|| : 두항이 false 일때만 false, 나머지 모두 true</h2>
<p>\${true || true } : ${true || true }</p>
<p>\${true || false } : ${true || false }</p>
<p>\${false || false} : ${false || true }</p>
<p>\${false || false} : ${false || false }</p>

<h2>or : 두항이 false 일떄만 false, 나머지 모두 true</h2>
<p>\${true or true } : ${true or true }</p>
<p>\${true or false } : ${true or false }</p>
<p>\${false or false} : ${false or true }</p>
<p>\${false or false} : ${false or false }</p>

<h2>not, ! : false --> true, true --> false</h2>
<p>\${not false} : ${not false }</p>
<p>\${! false } : ${! false }</p>
<p>\${not true } : ${not true }</p>
<p>\${! true} : ${! true }</p>

</body>
</html>






