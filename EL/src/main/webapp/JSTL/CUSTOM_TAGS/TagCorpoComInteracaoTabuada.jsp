<%-- 
    Document   : TagCorpoSemInteracao
    Created on : 12 de fev. de 2025, 11:00:11
    Author     : luiz.souza
--%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<%@taglib uri="WEB-INF/tlds/taglib" prefix="luiz" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tag Corpo com Interacao & Repetição Tabuada</title>
    </head>
    <body>
        <h1>Tag Corpo com Interacao & Repetição Tabuada </h1>
        <c:set var="multiplicador" value="1" />
        <c:set var="resultado" value="9" />
        <luiz:TagCorpoComInteracaoRepeticao>
            
            <br>Tabuada do 9 x ${multiplicador} = ${9*multiplicador}
            <c:set var="multiplicador" value="${multiplicador+1}" />
        </luiz:TagCorpoComInteracaoRepeticao> 
    </body>
</html>
