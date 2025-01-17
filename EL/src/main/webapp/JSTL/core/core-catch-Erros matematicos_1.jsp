<%-- 
    Document   : core-catch
    Created on : 14 de jan. de 2025, 18:19:25
    Author     : luiz.souza
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Core Catch - Erros matemáticos</title>
    </head>
    <body>
        <h1>Core Catch - Erros matemáticos</h1>
        <c:catch var="excecao">
        <jsp:scriptlet>
            int conta = 8/0;
            out.print(conta);
        </jsp:scriptlet>
        </c:catch>
        <c:if test="${excecao !=null}">
            Há um erro no sistema: ${excecao}
        </c:if>
    </body>
</html>
