<%-- 
    Document   : index.jsp
    Created on : 13 de jan. de 2025, 11:53:46
    Author     : luiz.souza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.teste.Cursos.Cursos"%>
<jsp:useBean id="DataBean" class="java.util.Date" />
<jsp:useBean id="cursosBean" class="com.teste.Cursos.Cursos"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>forEach listado dados de um Array usando JavaBeans:</h1>
        <br>
        
        <%
            pageContext.setAttribute("listaCursosJavaBean", new Cursos());
        %>
        
         <c:forEach var="ListandoCursosJavaBean" items="${listaCursosJavaBean.getListaCursos()}">
            ${ListandoCursosJavaBean}
        </c:forEach>
        <br>
        ------------------------------------------------------------------------
        <br><!-- comment -->
        <c:forEach var="listaCursosBean" items="${cursosBean.getListaCursos()}">
            ${listaCursosBean}
        </c:forEach>
        <br:
    </body>
</html>
