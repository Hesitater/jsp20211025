<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>21map-bean.jsp</title>
</head>
<body>

<%
// 코드 작성
// page 영역 attribute로 map 객체를 data라는 이름을 넣고
// map에 key, value 쌍을 (key1(String), obj(Bean04객체) )로 추가
%>

<%

Map<String, Bean04> map = new HashMap<String, Bean04>();

Bean04 obj1 = new Bean04();
obj1.setNickName("남규리");
obj1.setAge(37);
obj1.setVip(false);

Bean04 obj2 = new Bean04();
obj2.setNickName("김연지");
obj2.setAge(35);
obj2.setVip(false);

Bean04 obj3 = new Bean04();
obj3.setNickName("이보람");
obj3.setAge(34);
obj3.setVip(true);

map.put("key1", obj1);
map.put("key2", obj2);
map.put("key3", obj3);

pageContext.setAttribute("data", map);

pageContext.setAttribute("key1", "key1");
pageContext.setAttribute("nickName", "nickName");
pageContext.setAttribute("age", "age");
pageContext.setAttribute("vip", "vip");
%>

<p>이름 : ${data.key1.nickName }</p>
<p>첫째 : ${data.key1.age }</p>
<p>막내? : ${data.key1.vip }</p>

<p>이름 : ${data["key2"]["nickName"] }</p>
<p>둘째 : ${data["key2"]["age"] }</p>
<p>막내? : ${data["key2"]["vip"] }</p>

<p>이름 : ${data.key3.nickName }</p>
<p>셋째 : ${data.key3.age }</p>
<p>막내? : ${data.key3.vip }</p>

<hr>
<hr>
<p>이름 : ${data[key1][nickName] }</p>
<p>첫째 : ${data[key1][age] }</p>
<p>막내? : ${data[key1][vip] }</p>

</body>
</html>



























