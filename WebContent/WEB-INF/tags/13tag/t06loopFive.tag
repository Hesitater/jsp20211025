<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:forEach begin="1" end="5" var="i" varStatus="status">
	<p>${i } : ${status.count } : ${status.index} : <jsp:doBody /> </p>
</c:forEach>

<%--여기서는 배열,list 이 아니라서 index가 1부터 시작함 --%>

<%--위에랑 비교 step="2" 넣엇을떄 i, count, index를 넣은것 --%>
<hr>
<c:forEach begin="1" end="5" var="i" varStatus="status" step="2">
	<p>${i } : ${status.count } : ${status.index} : <jsp:doBody /> </p>
</c:forEach>