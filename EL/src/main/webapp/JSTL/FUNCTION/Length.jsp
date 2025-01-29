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
        <title>JSTL - Functions</title>
    </head>
    <body>
        <h1>Função Length</h1>
        <h2>Parâmetro Nome ->  ${param.nome} têm ${fn:length(param.nome)} caracteres </h2>
        <br><h2>Quantidade de Parâmetros disponíveis ->  ${fn:length(param)}</h2>
    </body>
    
</html>
