<%-- 
    Document   : Strings
    Created on : 29 de jan. de 2025, 17:50:50
    Author     : luiz.souza
--%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Functions - escapeXML</title>
    </head>
    <body>
        <c:set var="texto1" value="<h1><tag>Teste</tag></h1>" />
        <br>  Imprimindo a variavel texto1 sem escapeXml: ${texto1}
        <br>  Imprimindo a variavel texto1 com escapeXml: ${fn:escapeXml(texto1)}
    </body>
    
</html>
