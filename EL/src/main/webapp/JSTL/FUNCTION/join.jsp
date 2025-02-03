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
        <title>JSTL - Functions - JOIN</title>
    </head>
    
        <form id="formulario" action="" method="GET">
            Texto: <input type="text" autofocus name="texto"/><br>
            Split:<input type="text" name="buscar"/>
            <input type="submit" value="Enviar" />
        </form>
        <c:set var="arrayTexto" value="${fn:split(param.texto, param.buscar)}" />
        <br>Array de texto:  ${arrayTexto}     
        <br> Array:
        <c:forEach items="${arrayTexto}" var="atual" varStatus="estado">
            <br> ${estado.index}/${estado.count} -> ${atual} <br><!-- comment -->
        </c:forEach>   
            
        <br>Array de texto:  ${arrayTexto}     
        <c:set var="recuperado" value="${fn:join(arrayTexto, '***')}" />  
        <br>  
        <br> Texto juntado ${recuperado}
            <br> Processamento finalizado!
    
    
</html>
