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
        <c:out value=" <h1>Nome de testes</h1>" escapeXml="false"></c:out> <BR>
        
        Nome: <c:out value="${param.nome}" default="Nome não informado" ></c:out> <BR>
        Ultimo Lancamento: <c:out value="${CursosBean.ultimoLancamento()}"></c:out> <BR>
        
        
        <c:set var="nome1"
               scope="request"
               value="${param.nome}" 
                >
        </c:set>
        
        Nome1: ${nome1}<br>
        
        <c:remove var="nome" scope="session"/>
        <c:remove var="nome1" scope="request"/>
        Nome: ${nome}<br> 
        Nome1: ${nome1}<br>
    </body>
</html>
