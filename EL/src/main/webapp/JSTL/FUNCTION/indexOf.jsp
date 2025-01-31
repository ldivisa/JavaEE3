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
        <form id="formulario" action="" method="GET">
            Texto: <input type="text" autofocus name="texto"/><br>
            Buscar: <input type="text" name="buscar"/>
            <input type="submit" value="Enviar" />
        </form>
        
        <br>  Procurando a posição do valor ${param.buscar} na String ${param.texto}
        <br>  Posição: ${fn:indexOf(param.texto,param.buscar)}
    </body>
    
</html>
