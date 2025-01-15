<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forTokens lista com table e cores</title>
    </head>
    <body>
        <h1>forTokens com table e cores</h1>
                Listando cursos do Java page context<br>
               -------------------------------------<br>

        <%
            String listaCursos = "Java;PHP;ASP;SQL";
            pageContext.setAttribute("Cursos", listaCursos);
        %>
        <table border="1">
        <c:set var="cor1" value="yellow"> </c:set>
        <c:set var="cor2" value="green"> </c:set>
        <c:set var="contador" value="${0}"></c:set>
        <c:forTokens var="listaCursosJavaBean" items="${Cursos}" delims=";">
                <tr>
                    <c:choose>
                        <c:when test="${contador %2==0}">
                            <td style="background-color: ${cor1}">
                        </c:when>
                        <c:otherwise>
                            <td style="background-color: ${cor2}">
                        </c:otherwise>
                    </c:choose>
                            ${listaCursosJavaBean}
                    </td>
                </tr>
                <c:set var="contador" value="${contador+1}"></c:set>
        </c:forTokens>
        </table>
        <br>
        
        
                 Listando cursos JSTL<br>
               -------------------------------------<br>

        <c:set var="cursosOferecidos" value="Karate;Judo;Violao;Sanfona"></c:set>
        <table border="1">
        <c:set var="cor1" value="yellow"> </c:set>
        <c:set var="cor2" value="green"> </c:set>
        <c:set var="contador" value="${0}"></c:set>
        <c:forTokens var="listaCursosJavaBean" items="${cursosOferecidos}" delims=";">
                <tr>
                    <c:choose>
                        <c:when test="${contador %2==0}">
                            <td style="background-color: ${cor1}">
                        </c:when>
                        <c:otherwise>
                            <td style="background-color: ${cor2}">
                        </c:otherwise>
                    </c:choose>
                            ${listaCursosJavaBean}
                    </td>
                </tr>
                <c:set var="contador" value="${contador+1}"></c:set>
        </c:forTokens>
        </table>
       
    </body>
</html>
