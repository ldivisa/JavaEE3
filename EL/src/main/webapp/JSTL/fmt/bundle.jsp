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
        <fmt:setLocale value = "en_US" />
        <fmt:bundle basename="org.hopto.depositodivisa.resources.rotulos" >
            <fmt:message key="Saudacao" />
        </fmt:bundle>
        
        
        <fmt:setLocale value = "pt" />
        <fmt:bundle basename="org.hopto.depositodivisa.resources.rotulos" >
            <fmt:message key="Saudacao" />
        </fmt:bundle>
        
    </div>    
    </body>
    
</html>
