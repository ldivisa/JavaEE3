<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="cursosBean" class="com.teste.Cursos.Cursos"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>core Import</title>
        ------------------------------------<br>
        Seção importada:<br><!-- comment -->
        <c:import url="cabecalho.jsp"> </c:import>
        ------------------------------------<br>
    </head>
    <body>
    <h1>core Import</h1>
        ------------------------------------<br>
        Seção importada:<br><!-- comment -->
        <c:import url="footer.jsp"> </c:import>
        ------------------------------------<br>
    
    

    
            </body>
</html>
