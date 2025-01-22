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
        <c:import url="Books.xml" var="k"/>
        <x:parse xml="${k}" var="parsed" />
        <x:forEach select="$parsed/books" var="current">
            <x:out select="title" />
            <x:out select="price" />
        
        </x:forEach>
        </div>
        
    </body>
    
</html>


