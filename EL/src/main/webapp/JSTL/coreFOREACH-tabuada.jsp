<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="DataBean" class="java.util.Date" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>core- forEach - tabuada :</h1>
        <br>
        <c:choose> 
            <c:when 
                test="${empty param.numero}">
                    Variavel numero vazia!<br>
                    <c:set 
                        var="numero"   
                        value="11"
                    >
                    </c:set>
            </c:when>
                    <c:otherwise>
                        <c:set 
                        var="numero"   
                        value="${param.numero}"
                         >
                         </c:set>
                    </c:otherwise>
       </c:choose>
        
                    Número é ${numero}           <br>
                    
        <c:forEach 
            var="indiceTabuada"
            begin="1"
            end="9"
            step="1">
            A tabuada de ${numero} x ${indiceTabuada} = ${numero*indiceTabuada}<br>
        </c:forEach>  
        <br>
                
    </body>
</html>
