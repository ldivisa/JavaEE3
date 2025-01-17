<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="cursosBean" class="com.teste.Cursos.Cursos"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forEach lista com table e cores</title>
    </head>
    <body>
        <h1>forEach lista com table e cores</h1>
        <table border="1">
        <c:set var="cor1" value="yellow"> </c:set>
        <c:set var="cor2" value="green"> </c:set>
        <c:set var="contador" value="${0}"></c:set>
            <c:forEach var="listaCursosJavaBean" items="${cursosBean.getListaCursos()}">
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
            </c:forEach>
        </table>
        <br>
    </body>
</html>
