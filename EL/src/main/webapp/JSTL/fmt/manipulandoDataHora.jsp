<%-- 
    Document   : formatNumber
    Created on : 15 de jan. de 2025, 11:43:59
    Author     : luiz.souza
--%>

<link rel="stylesheet" type="text/css" href="css/estilo.css"  />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="dataBean" class="java.util.Date" />
<jsp:useBean id="dataBean2" class="com.teste.Data.Data" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - FTM</title>
    </head>
    <body>
        <div>
        <h1>JSTL - FMT - Manipulando Data:</h1>
        
        Data default = <fmt:formatDate value="${dataBean}" type="date" /><br>
        Data short= <fmt:formatDate value="${dataBean}" dateStyle="short" type="date"/><br><!-- comment -->
        Data medium = <fmt:formatDate value="${dataBean}" dateStyle="medium" type="date"/><br><!-- comment -->
        Data long = <fmt:formatDate value="${dataBean}" dateStyle="long" type="date"/><br><!-- comment -->
        Data full= <fmt:formatDate value="${dataBean}" dateStyle="full" type="date"/><br><!-- comment -->
        Data com pattern = <fmt:formatDate value="${dataBean}" pattern="dd-MMM-YYYY" /><br><!-- comment -->
        <br>
        ________________________________________________________________________________________________<br>
        
        <h1>JSTL - FMT - Manipulando Hora:</h1>
                
        Hora default = <fmt:formatDate value="${dataBean}" type="time" /><br>
        Hora short= <fmt:formatDate value="${dataBean}" type="time" timeStyle="short" /><br><!-- comment -->
        Hora medium = <fmt:formatDate value="${dataBean}" type="time" timeStyle="medium" /><br><!-- comment -->
        Hora long = <fmt:formatDate value="${dataBean}" type="time" timeStyle="long" /><br><!-- comment -->
        Hora full= <fmt:formatDate value="${dataBean}" type="time" timeStyle="full" /><br><!-- comment -->
        Hora com pattern = <fmt:formatDate value="${dataBean}" pattern="HH:mm" /><br><!-- comment -->
        <br>
        
        ________________________________________________________________________________________________<br>
        
        <h1>JSTL - FMT - Manipulando Data e Hora (Juntos):</h1>
                
        Data e Hora default = <fmt:formatDate value="${dataBean}" type="both"  /><br>
        Data e Hora short= <fmt:formatDate value="${dataBean}" type="both" timeStyle="short" dateStyle="short"/><br><!-- comment -->
        Data e Hora medium = <fmt:formatDate value="${dataBean}" type="both" timeStyle="medium" dateStyle="medium" /><br><!-- comment -->
        Data e Hora long = <fmt:formatDate value="${dataBean}" type="both" timeStyle="long" dateStyle="long"/><br><!-- comment -->
        Data e Hora full= <fmt:formatDate value="${dataBean}" type="both" timeStyle="full" dateStyle="full"/><br><!-- comment -->
        Data e Hora com pattern = <fmt:formatDate value="${dataBean}" pattern="DD/MM/YY - HH:mm" /><br><!-- comment -->
        <br>
        </div>
        <br>
    </body>
</html>
