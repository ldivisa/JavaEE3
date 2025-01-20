<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="DataBean" class="java.util.Date" />
<!DOCTYPE html>
<html><?xml version="1.0" encoding="UTF-8"?><?xml versio<?xml version="1.0" encoding="UTF-8"?>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Situação de alunos:</h1><br>
        <c:if test="${not empty param.nota1 && not empty param.nota2}">
              digitou as duas notas              
              <c:set var="media" value="${(param.nota1+param.nota2)/2}"></c:set>
             <br> A média é ${media}
             <c:choose>
                 <c:when test="${media>=7.0}">
                         <br>Aluno aprovado! Média ${media}
                 </c:when>
                         <c:otherwise>
                         <br>Aluno reprovado! Média ${media}
                         </c:otherwise>
             </c:choose>    
        </c:if>
        
        
    </body>
</html>
