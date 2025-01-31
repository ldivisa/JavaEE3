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
        <title>JSTL - Functions - startsWith endsWith</title>
    </head>
    <body>
        <h1>Função contains e containsIgnoreCase</h1>
        <h2>Parâmetro texto 1 ->  ${param.texto1} </h2>
        <h2>Parâmetro texto 2 ->  ${param.texto2} </h2>
        Texto 1 termina com text 2 ? ${fn:endsWith(param.texto1, param.texto2)}<br>
        Texto 1 começa com text 2  ? ${fn:startsWith(param.texto1, param.texto2)}<br>
    </body>
    
</html>
