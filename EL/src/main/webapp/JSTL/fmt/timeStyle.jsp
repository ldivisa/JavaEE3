<%-- 
    Document   : formatNumber
    Created on : 15 de jan. de 2025, 11:43:59
    Author     : luiz.souza
--%>
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
        
        <h1>JSTL - FMT - Manipulando Data:</h1>
        Data default = ${dataBean}<br>
        
        Data default = <fmt:formatDate value="${dataBean}" type="time"/><br>
        Data short= <fmt:formatDate value="${dataBean}" dateStyle="short" /><br><!-- comment -->
        Data medium = <fmt:formatDate value="${dataBean}" dateStyle="medium" /><br><!-- comment -->
        Data long = <fmt:formatDate value="${dataBean}" dateStyle="long" /><br><!-- comment -->
        Data full= <fmt:formatDate value="${dataBean}" dateStyle="full" /><br><!-- comment -->
        Data com pattern = <fmt:formatDate value="${dataBean}" pattern="dd-MMM-YYYY" /><br><!-- comment -->
        
        <br>
        ________________________________________________________________________________________________<br>
        <h1>JSTL - FMT - Manipulando Hora:</h1>
        Data default = ${dataBean}<br>
        
    </body>
</html>
