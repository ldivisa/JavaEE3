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
        <title>JSTL - Functions - REPLACE</title>
    </head>
    <body>
        <form id="formulario" action="" method="GET">
            Texto: <input type="text" autofocus name="texto"/><br>
           
            <input type="submit" value="Enviar" />
        </form>
        
        <br>  LowerCase: ${fn:toLowerCase(param.texto)}
        <br>  
        <br>  UpperrCase: ${fn:toUpperCase(param.texto)}
            <br> Processamento finalizado!
    </body>
    
</html>
