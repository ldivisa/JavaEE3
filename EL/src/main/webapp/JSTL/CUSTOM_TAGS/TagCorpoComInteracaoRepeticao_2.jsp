<%-- 
    Document   : TagCorpoSemInteracao
    Created on : 12 de fev. de 2025, 11:00:11
    Author     : luiz.souza
--%>
<%@taglib uri="WEB-INF/tlds/taglib" prefix="luiz" %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tag Corpo com Interacao & Repetição 2 </title>
    </head>
    <body>
        <h1>Tag Corpo com Interacao & Repetição 2 </h1>
        <c:set var="contador" value="${contador}"/>
        <c:set var="multiplicador" value="${multiplicador}"/>
        <luiz:TagCorpoComInteracaoRepeticao2 contador="10">
            <br>${contador} - Conteudo da TAG com interação & Repetição 2...
        </luiz:TagCorpoComInteracaoRepeticao2> 
            
       <luiz:TagCorpoComInteracaoRepeticao2 contador="4">
            <br>${contador} - Tabuada do 9 * ${contador} = ${contador*9}:
        </luiz:TagCorpoComInteracaoRepeticao2> 
    </body>
</html>
