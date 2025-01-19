<%-- 
    Document   : idiomaJavaBeanServlet.jsp
    Created on : 18 de jan. de 2025, 21:03:43
    Author     : Luiz
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="${idioma}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Idioma - </title>
    </head>
    <body>
        
        <h1>Idioma</h1>
        <div>
        <form action="" method="post">
            <input type="hidden" name="idioma" value="en_US">
            <input type="image" src="/jstl/imagens/bandeiraAmericana.png" width="60" height="60" alt="bandeiraAmericana">
        </form>  
        
        <form action="" method="post">        
            <input type="hidden" name="idioma" value="pt_BR">
            <input type="image" src="/jstl/imagens/bandeiraBrasil.jpg" width="60" height="60" alt="bandeiraBrasil">        
        </form>  
        </div>
        
            ${mensagem}
            ${nome}
            ${endereco}
            ${fone}
        
    </body>
</html>
