<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>54js.jsp</title>
</head>
<body>
<h1>javascript</h1>

<script>
console.log("hello js");

var name = "trump";
var age = 22;

let desc1 = `i'm ${name} and i'm ${age } `;
let desc2 = `i'm \${name} and i'm \${age } `;
 
console.log(desc1);
console.log(desc2);
</script>
</body>
</html>