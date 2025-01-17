<%-- 
    Document   : localidade
    Created on : 15 de jan. de 2025, 16:56:49
    Author     : luiz.souza
--%>
<link rel="stylesheet" href="css/estilo.css" >
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt - Localidade</title>
    </head>
    
    <body>
        <div>
        <h1>fmt - Localidade (ISO):</h1>
        
        Localidade (ISO 639 - idioma / ISO 3166 - pais):  ${pageContext.request.locale}<br>
        Nome da localidade :  ${pageContext.request.locale.displayName}<br>
        Nome da língua:  ${pageContext.request.locale.displayLanguage}  <br>
        Nome do país: ${pageContext.request.locale.displayCountry}  <br>
        ------------------------------------------------------------<br>        
        <fmt:setLocale value="en_US" scope="page"/>
        Localidade (ISO 639 - idioma / ISO 3166 - pais):  ${pageContext.request.locale}<br>
        Nome da localidade :  ${pageContext.request.locale.displayName}<br>
        Nome da língua:  ${pageContext.request.locale.displayLanguage}  <br>
        Nome do país: ${pageContext.request.locale.displayCountry}  <br>

        
        
        
        </div>
    </body>
    
</html>
