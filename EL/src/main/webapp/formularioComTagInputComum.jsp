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
            Usando a Tag input comum (existente):<br>
            Usuário: <INPUT type="text" name="usuario" /><br>
            Senha:   <INPUT type="password" name="senha" /><br><!-- comment -->
            <input type="submit" name="enviar" value="Enviar" />
            
        </form>

    </body>
</html>
