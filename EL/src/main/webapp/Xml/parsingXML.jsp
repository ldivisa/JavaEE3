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
        <title>Trabalhando com XML</title>
    </head>
    <body>
        <div id="paginaHome">
        <h1>XML- parsing</h1>
        <c:import url="cursos.xml" var="k"/>
        <x:parse xml="${k}" var="output"/>  
<p>autor 1: <x:out select="$output/listacursos/curso[1]/autor" /></p>  
<p>autor 1: <x:out select="$output/listacursos/curso[2]/autor" /></p>  
<br>--------------------------------------------------------------------<br>  
<x:forEach select="$output/curso">
    <x:out select="autor"/><br>
    <x:out select="nome"/><br>
<br>--------------------------------------------------------------------<br>
</x:forEach>   

        
        </div>
        
    </body>
    
</html>


