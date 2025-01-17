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
        <title>fmt - Localidade - PARAM </title>
    </head>
    <body>
    <div>
        <h1>fmt - Localidade - setBundle:</h1>        
        
        Setando para en<br>
        <fmt:setLocale value = "en" />
        <fmt:bundle basename="com.teste.mensagensparametrizadas.Exemplo"  >
            <fmt:message key="mensagem" >
                <fmt:param value="Jose" /><br>
                <fmt:param value="Maria"/><br>
            </fmt:message>     
        </fmt:bundle>
        
                <br>
        <fmt:setLocale value = "pt" />
        <fmt:bundle basename="com.teste.mensagensparametrizadas.Exemplo"  >
            <fmt:message key="mensagem" >
                <fmt:param value="Jose" /><br>
                <fmt:param value="Maria"/><br>
            </fmt:message>     
        </fmt:bundle>
                <br>
                
         <fmt:setLocale value = "es" />
        <fmt:bundle basename="com.teste.mensagensparametrizadas.Exemplo"  >
            <fmt:message key="mensagem" >
                <fmt:param value="Jose" /><br>
                <fmt:param value="Maria"/><br>
            </fmt:message>     
        </fmt:bundle>       
        
        
    </div>    
    </body>
    
</html>
