<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CursosBean" class="com.teste.Cursos.Cursos" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Hello World!</h1>
        <br>
        Soma dos numeros 4+8 =         <c:out value=" ${4+8}"></c:out> <BR>
        <c:out value=" <h1>Nome de testes</h1>" escapeXml="false"></c:out> <BR>
        <c:out value="${param.nome}" default="Nome não informado" ></c:out> <BR>
        <c:out value="${CursosBean.ultimoLancamento()}"></c:out> <BR>
        <c:set var="nome1"
               scope="request"
               value="${param.nome}" 
                >
        </c:set>
        
        ${nome1}<br>
        
        Carrinho de compras:<br>
        <c:set var="valorTotal" value="${010}" scope="session" />
        <c:set var="valorComprou" value="${129}" scope="session" />
        <c:set var="valorTotal" value="${valorTotal+valorComprou}" />
        
        O valor total do carrinho de compras é: ${valorTotal}           
        <br><!-- comment -->
        
        
    </body>
</html>
