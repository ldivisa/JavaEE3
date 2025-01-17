<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="DataBean" class="java.util.Date" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Teste WHEN / OTHERWISE :</h1>
        <br>
        Nome presente na variável:
        
        <c:forEach 
            var="numeros"
            begin="0"
            end="10"
            step="1">
            ${numeros}
        </c:forEach>  
        <br>
        
        <c:set var="alfabeto" value="A,B,C,D,E"></c:set>
        ${alfabeto}
        
        <c:forEach
            var="alfabetofor"
            items="${alfabeto}"
            >
            <br> ${alfabetofor}            
        </c:forEach>
        
    </body>
</html>
