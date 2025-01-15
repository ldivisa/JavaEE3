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
        <c:choose>
        <c:when test="${empty param.nome}">
            Nome Vazio            
        </c:when>
            <c:otherwise>
                Possui parâmetro: ${param.nome}
            </c:otherwise>
        </c:choose>    
            <br>
         Com EL --> ${empty param.nome ?" Não possui valor": "SIm, possui valor"}
        
    </body>
</html>
