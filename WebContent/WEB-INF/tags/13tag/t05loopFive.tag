<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 일일이 다 쓸수도 있고.... --%>
<jsp:doBody />
<jsp:doBody />
<jsp:doBody />
<jsp:doBody />
<jsp:doBody />

<hr>

<%-- taglib 이용하여 설정후 사용 --%>
<c:forEach begin="1" end="5">
		<jsp:doBody></jsp:doBody>
</c:forEach>



