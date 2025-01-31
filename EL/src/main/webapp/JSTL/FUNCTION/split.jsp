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
        <title>JSTL - Functions - SPLIT</title>
    </head>
    <body>
        <form id="formulario" action="" method="GET">
            Texto: <input type="text" autofocus name="texto"/><br>
            Split:<input type="text" name="buscar"/>
            <input type="submit" value="Enviar" />
        </form>
        
        <br>  Dividindo o texto ${param.texto} pelo token "${param.buscar}"
        <br>  
        <c:forEach items="${fn:split(param.texto,param.buscar)}" var="atual">
            
            ${atual}<br>
            
        </c:forEach>
            <br> Processamento finalizado!
    </body>
    
</html>
