<%-- 
    Document   : localidade
    Created on : 15 de jan. de 2025, 16:56:49
    Author     : luiz.souza
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/estilo.css" >
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt - Localidade - setBundle</title>
    </head>
    
    <body>
    <div>
        <h1>fmt - Localidade - setBundle:</h1>        
        
        Setando para pt_BR<br>
        <fmt:setLocale value = "pt_BR"/>
        <fmt:setBundle basename = "Exemplo" var = "lang"/>
        Localidade :  ${pageContext.request.locale}<br>
        <fmt:message key = "nome" bundle = "${lang}"/><br/>
        ---------------------------------------------------------------------------<br><!-- comment -->
        Setando para en<br>
        <fmt:setLocale value="en"/>
        <fmt:setBundle basename = "Exemplo" var = "lang"/>
        Localidade :  ${pageContext.request.locale}<br>
        <fmt:message key = "nome" bundle = "${lang}"/><br>
        <fmt:message  key="nome" var="mensagem" bundle="${lang}"/>
        Localidade (ISO 639 - idioma / ISO 3166 - pais):  ${pageContext.request.locale}<br>
        Nome da localidade :  ${pageContext.request.locale.displayName}<br>
        Nome da língua:  ${pageContext.request.locale.displayLanguage}  <br>
        Nome do país: ${pageContext.request.locale.displayCountry}  <br>
        Mensagem: ${mensagem}<br>
        ---------------------------------------------------------------------------<br><!-- comment -->
        Setando para en_US<br>
        <fmt:setLocale value="en_US"/>
        <fmt:setBundle basename = "Exemplo" var = "lang"/>
        Localidade :  ${pageContext.request.locale}<br>
        <fmt:message key = "nome" bundle = "${lang}"/><br>
        <fmt:message  key="nome" var="mensagem" bundle="${lang}"/>
        Localidade (ISO 639 - idioma / ISO 3166 - pais):  ${pageContext.request.locale}<br>
        Nome da localidade :  ${pageContext.request.locale.displayName}<br>
        Nome da língua:  ${pageContext.request.locale.displayLanguage}  <br>
        Nome do país: ${pageContext.request.locale.displayCountry}  <br>
        Mensagem: ${mensagem}<br>
        
    </div>    
    </body>
    
</html>
