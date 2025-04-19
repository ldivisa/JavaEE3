<%@tag body-content="empty" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="nomeselect" required="true" %>
<%@attribute name="sizeselect" required="true" %>
<%@attribute name="delimitador" required="true" %>
<%@attribute name="listaselect" required="true" %>
<select name="${nomeselect} size="$sizeselect}">
    <c:forTokens var="listaopcoes" delims="${delimitador}" items="${listaselect}">
        <option value="listaopcoes">${listaopces}</option>
    </c:forTokens>
</select>