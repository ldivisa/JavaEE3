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
        <h1>forEach listado dados de um Array:</h1>
        <br>
        <%
        String[] ListaCursos = new String[]{
            "Java","PHP", "ASP", "Algoritmos"
            };
         
        for(int i=0;i<ListaCursos.length;i++){
            out.println(ListaCursos[i]+"<br>");
            }
            
            pageContext.setAttribute("cursosOferecidos", ListaCursos);
            
        %>
        <br><!-- comment -->
        
        <c:set var="cursos" value="${cursosOferecidos}">
        </c:set>
        
        <c:forEach var="ListandoCursos" items="${cursos}">
            ${ListandoCursos}
        </c:forEach>
        
    </body>
</html>
