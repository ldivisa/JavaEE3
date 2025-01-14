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
        <h1>Teste if:</h1>
        <br>
        Nome digitado na variavel: ${param.nome}
        <c:if test="${empty param.nome}">
            Nome Vazio            
        </c:if>
            <br>
            Hoje é : ${DataBean.toString()}     <br><!-- comment -->
            Dia ${DataBean.day}<br>
            <c:if test="${DataBean.day >0 && DataBean.day<6}">
            Dia de semana
        </c:if>
            ${date}
        
        
    </body>
</html>
