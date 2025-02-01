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
            Trecho original:<input type="text" name="original"/>
            Trecho substituto:<input type="text" name="replacetext"/>
            <input type="submit" value="Enviar" />
        </form>
        
        <br>  substituindo no texto ${param.texto} o trecho ${param.original} em ${param.replacetext}
        <br>  
        <c:forEach items="${fn:replace(param.texto,param.original, param.replacetext)}" var="atual">
            
            ${atual}<br>
            
        </c:forEach>
            <br> Processamento finalizado!
    </body>
    
</html>
