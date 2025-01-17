<%-- 
    Document   : com java
    Created on : 6 de jan. de 2025, 18:36:50
    Author     : ZeDaManga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="beanPessoa" class="org.hopto.depositodivisa.javaBeans.Pessoa" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>${beanPessoa.nome}</h1>
    </body>
</html>
