<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="song"%>
<%@ attribute name="singer" %>
<%@ tag dynamic-attributes="entry" %>


<ul>
	<li>${song }</li>
	<li>${singer }</li>
</ul>

 <ul>
<c:forEach items="${entry }" var="entry">
	<li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul> 



<%--
 <ul>
	<c:forEach items="${entry }" var="entry">
		<li>${entry.key} : ${entry.value }</li>
	</c:forEach>
</ul> 
 --%>
 
