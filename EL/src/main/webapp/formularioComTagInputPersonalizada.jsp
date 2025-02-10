<%-- 
    Document   : formularioComTagInputComum
    Created on : 10 de fev. de 2025, 12:44:44
    Author     : luiz.souza
--%>
<%@taglib uri="WEB-INF/tlds/taglib.tld" prefix="luiz" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="GET">
            Usando a Tag personalizada(criada):<br>
            Nome :  <luiz:taginputpersonalizada name="nome" type="texto"/><br>
            Senha:  <luiz:taginputpersonalizada name="senha" type="password"/><br>
            <luiz:taginputpersonalizada name="enviar" type="submit" value="Enviar"/>
            
        </form>

    </body>
</html>
