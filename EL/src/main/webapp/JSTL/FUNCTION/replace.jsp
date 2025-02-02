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
        <title>JSTL - Functions - SUBSTRING</title>
    </head>
    <body>
        <form id="formulario" action="" method="GET">
            Texto: <input type="text" autofocus name="texto"/><br>
            Caractere Inicio do Trecho original:<input type="text" name="inicio"/>
            Caractere Final do trecho original:<input type="text" name="finali"/>
            <input type="submit" value="Enviar" />
        </form>
        
        <br>  Mostrando os segmentos do texto ${param.texto}:
        <br>  
        <br> ${param.inicio} e o caractere inicial selecionado
        <br> ${param.finali} e o caractere final selecionado
        <br>
        <br>
        <br>Recorte substring: ${fn:substring(param.texto, param.inicio, param.finali)}
        <br>Recorte substringAfter: ${fn:substringAfter(param.texto, fn:substring(param.texto,param.inicio, param.finali))}
        <br>Recorte substringBefore: ${fn:substringBefore(param.texto, fn:substring(param.texto,param.inicio, param.finali))}
          
        
            <br> Processamento finalizado!
    </body>
    
</html>
