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
        <title>core URL</title>
    </head>
    <body>
    <h1>core URL</h1>
    <c:url var="siteNeri" value="http://www.informaticon.com.br"></c:url>
    <a href="${siteNeri}"> site neri </a>
    
            </body>
</html>
