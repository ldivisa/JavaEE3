<%@tag body-content="empty" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dataatual" class="java.util.Date" />
<br><fmt:formatDate value="${dataatual}" pattern="dd-MMM-YYYY" dateStyle="long" type="date" />