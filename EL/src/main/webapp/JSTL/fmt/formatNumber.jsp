<%-- 
    Document   : formatNumber
    Created on : 15 de jan. de 2025, 11:43:59
    Author     : luiz.souza
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - FTM</title>
    </head>
    <body>
        
        <h1>JSTL - FMT - formatNumber</h1>
        <c:set var="number" value="100"></c:set>
        Numero 1000 formatado default - <fmt:formatNumber value="1000"></fmt:formatNumber><br><!-- comment -->
        Numero 1000 formatado number (=default)- <fmt:formatNumber value="1000" type="number"></fmt:formatNumber><br><!-- comment -->
        Numero 1 formatado percent    - <fmt:formatNumber value="1" type="percent"></fmt:formatNumber><br><!-- comment -->
        Numero 500 formatado CURRENCY - <fmt:formatNumber value="500" type="currency"></fmt:formatNumber><br><!-- comment -->
        Numero ${param.numero} formatado - <fmt:formatNumber value="${param.numero}" type="currency"></fmt:formatNumber><br><!-- comment -->
        Numero 5000 formatado pattern - <fmt:formatNumber value="5000" pattern="000,000.000"></fmt:formatNumber><br><!-- comment -->
        Numero 5000.34 formatado pattern - <fmt:formatNumber value="5000.34" pattern="###,###.##"></fmt:formatNumber><br><!-- comment -->
        
        <fmt:formatNumber value="900.50" type="currency" var="valorFormatado"></fmt:formatNumber><br><!-- comment -->
        Numero ${valorFormatado} formatado currency = ${valorFormatado}<br><br>
        
        parseNumber:<br>
        --------------------<br>
        <fmt:parseNumber value="${valorFormatado}" type="currency" var="valorFormatado" integerOnly="true"></fmt:parseNumber><br>
        Valor parseado currency para apenas inteiros: ${valorFormatado}<br>
        --------------------<br>
        parseNumber:<br>
        --------------------<br>
      
        
        --------------------<br>
        
    </body>
</html>
