<%-- 
    Document   : com java
    Created on : 6 de jan. de 2025, 18:36:50
    Author     : ZeDaManga
--%>
<%@page import="org.hopto.depositodivisa.javaBeans.Pessoa" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% Pessoa pessoa = new Pessoa();
    %>
    
    <body>
        <h1><%=pessoa.getNome()%></h1>
    </body>
</html>
