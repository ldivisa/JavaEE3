<%-- 
    Document   : core-catch
    Created on : 14 de jan. de 2025, 18:19:25
    Author     : luiz.souza
--%>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Core Catch</title>
    </head>
    <body>
        <h1>Core Catch</h1>
        <c:catch var="excecao">
        <c:import url="cabecalho.jspx"></c:import>
        </c:catch>
        <c:if test="${excecao !=null}">
              Há um registro de exceção: ${excecao}
        </c:if>
        
    </body>
</html>
