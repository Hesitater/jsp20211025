<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>27list-ex.jsp</title>
</head>
<body>
<%
String[] davichi = {"강민경", "이해리"};

List<String> seeYa = new ArrayList<String>();
seeYa.add("남규리");
seeYa.add("김연지");
seeYa.add("이보람");

List<String> asepa = new ArrayList<String>();
asepa.add("카리나");
asepa.add("윈터");
asepa.add("지젤");
asepa.add("닝닝");

pageContext.setAttribute("arr", davichi);
pageContext.setAttribute("list", seeYa);
pageContext.setAttribute("list1", asepa);

%>
<p>davichi : ${arr }</p>
<p>seeYa : ${list }</p>
<hr>
<p>Davichi : ${arr[0] }</p>
<p>Davichi : ${arr[1] }</p>

<hr>
<p>SeeYa : ${list[0] }</p>
<p>SeeYa : ${list[1] }</p>
<p>SeeYa : ${list[2] }</p>
<p>SeeYa : ${list["2"] }</p>
<%-- <p>SeeYa : ${list["two"] }</p> --%>
<hr>
<p>asepa : ${list1[0] } </p>
<p>asepa : ${list1[1] }</p>
<p>asepa : ${list1[2] }</p>
<p>asepa : ${list1[3] }</p>

</body>
</html>