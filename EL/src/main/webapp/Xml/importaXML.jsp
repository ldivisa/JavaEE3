<%-- 
    Document   : xmlSetting
    Created on : 22 de jan. de 2025, 12:24:22
    Author     : luiz.souza
--%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabalhando cmo XML</title>
    </head>
    <body>
        <div id="paginaHome">
        <h1>XML</h1>
        <c:catch var="erroxml">
            <h2>Arquivo XML passado no parâmetro: ${param.url}</h2>
                Importacao 1: <c:import url="${param.url}"></c:import>
            <br>--------------------------------------------------------------------<br>
                Importacao 2: <c:import url="${param.url}" var="arquivoxml"></c:import>
                ${arquivoxml}
            <br>--------------------------------------------------------------------<br>
        
        </c:catch>
        <c:if test="${erroxml != null}">
            <h1> Há erro: ${erroxml} </h1>
        </c:if>    
        </div>
        <x:parse doc="${arquivoxml}" 
    </body>
    
</html>

