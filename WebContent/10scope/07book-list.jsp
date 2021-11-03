<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07book-list.jsp</title>
</head>
<body>
<h1>책목록</h1>
<a href="07book-form.jsp"> 책 등록하기</a>
<ul>
<%
	List<MyBook> books = (List<MyBook>) application.getAttribute("books");
	if ( books != null) {
		for (MyBook book : books) {

%>
		<li><%=book.getTitle()%>  : <%= book.getPrice() %>원</li>
<%
		}
	}
%>			
</ul>

<hr>
<hr>
<h1>표현언어 (expression language - el)</h1>
<ul>
<li>${books[0].title } : ${books[0].price }원</li>
<li>${books[1].title } : ${books[1].price }원</li>
<li>${books[2].title } : ${books[2].price }원</li>
<li>${books[3].title } : ${books[3].price }원</li>
<li>${books[4].title } : ${books[4].price }원</li>
<li>${books[5].title } : ${books[5].price }원</li>
</ul>
</body>
</html>









