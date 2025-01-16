<%-- 
    Document   : newjspcomele.jsp
    Created on : 6 de jan. de 2025, 18:41:04
    Author     : ZeDaManga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="beanPessoa" class="org.hopto.depositodivisa.javaBeans.Pessoa"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><jsp:getProperty name="beanPessoa" property="nome"></jsp:getProperty></h1>
    </body>
</html>
