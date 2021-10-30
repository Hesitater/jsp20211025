<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook"%>

<%
MyBook book0 = (MyBook)request.getAttribute("book0");
MyBook book1 = (MyBook)request.getAttribute("book1");
MyBook book2 = (MyBook)request.getAttribute("book2");
MyBook book3 = (MyBook)request.getAttribute("book3");
MyBook book4 = (MyBook)request.getAttribute("book4");
%>
<div>
제목 : <%=book0.getTitle() %> <br>
가격 : <%=book0.getPrice() %> <br>
제목 : <%=book1.getTitle() %> <br>
가격 : <%=book1.getPrice() %> <br>
제목 : <%=book2.getTitle() %> <br>
가격 : <%=book2.getPrice() %> <br>
제목 : <%=book3.getTitle() %> <br>
가격 : <%=book3.getPrice() %> <br>
제목 : <%=book4.getTitle() %> <br>
가격 : <%=book4.getPrice() %> <br>
</div>

<hr>

<div>
<ul class="menu">
<%-- 
	<%
	List<MyBook> books = (List<MyBook>) request.getAttribute("book");
	
		for ( MyBook item : books) {
	%>	
		<li><a href=""><%=item %></a></li>
	
	<% 
		}
	%>
		
--%>
</ul>	
	
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</ul>