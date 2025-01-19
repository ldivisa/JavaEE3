<%-- 
    Document   : localidade
    Created on : 15 de jan. de 2025, 16:56:49
    Author     : luiz.souza
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/estilo.css" >
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:choose>
    <c:when test="${param.localidade eq 'pt_BR'}">
        <fmt:setLocale value="pt_BR"/>
    </c:when>    
    
    <c:when test="${param.localidade eq 'en_US'}">
        <fmt:setLocale value="en_US"/>
    </c:when>
</c:choose>
<fmt:setBundle basename="com.exemploi18n.Example" var="lingua" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt - i18n -> <fmt:message bundle="${lingua}" key="titulo"/></title>
    </head>
    <body>
    <div>
        <h1>fmt - I18N:</h1>        
        <form action="" id="bandeiraUSA" name="bandeiraUSA" method="post">
            <input type="hidden" id="bandeiraAmericana" name="bandeiraAmericana" value="?localidade=en_US">
            <img src="imagens/bandeiraAmericana.png" width="100" height="100" alt="bandeiraAmericana">
        </form>  
        <form action="" id="bandeiraBRA" name="bandeiraBRA" method="post">        
            <input type="hidden" id="bandeiraBrasil" name="bandeiraBrasil" value="?localidade=pt_BR">
            <img src="imagens/bandeiraBrasil.jpg" width="100" height="100" alt="bandeiraBrasil">        </form>  
        <form action="" id="formulario" method="post">
        <a href="?localidade=pt_BR">Portugues</a>    <a href="?localidade=en_US">Ingles</a><br>
        
        <fmt:message key="nome" bundle="${lingua}" /> <input type="text" name="nome"> <br>
        <fmt:message key="endereco" bundle="${lingua}" /> <input type="text" name="endereco"> <br>
        <fmt:message key="botaogravar" bundle="${lingua}" var="lblbotaoGravar"/>
           <input type="button" 
                  name="botaogravar" 
                  value="${lblbotaoGravar}"
            >
        </form>
    </div>    
    </body>
    
</html>
