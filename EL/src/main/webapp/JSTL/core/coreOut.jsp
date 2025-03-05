<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<jsp:useBean id="CursosBean" class="com.teste.Cursos.Cursos" />--%>
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
         <c:set
             var="nome"
             value="Neri"
             >             
         </c:set>
         
         <c:out value="${nome}" ></c:out>
        
    </body>
</html>
