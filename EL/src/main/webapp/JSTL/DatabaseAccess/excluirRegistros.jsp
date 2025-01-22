<%-- 
    Document   : setDataSource
    Created on : 19 de jan. de 2025, 09:59:33
    Author     : loja
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
        String senhaBanco=new String(Base64.getDecoder().decode("Q2FyYWxob0Bwb3N0Z3JlczE="));
        session.setAttribute("senha", senhaBanco);
        %>
<sql:setDataSource  
            url="jdbc:postgresql://localhost/javaWebIII"
            driver="org.postgresql.Driver"
            user="postgres"
            password="${senha}"
            var="JavaEE"
            />
<h1>DataSource</h1>
        
        
        <sql:setDataSource  
            url="jdbc:postgresql://localhost/javaWebIII"
            driver="org.postgresql.Driver"
            user="postgres"
            password="${senha}"
            var="JavaEE"
            />
<c:choose>
    
        <c:when test="${param.cod != null}">
            <sql:update dataSource="${JavaEE}">
                delete from pessoas where pescodigo= ${param.cod}
            </sql:update>
            <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SetDataSource</title>
    </head>
    <body>
        <h1>Código ${param.cod} - Apagado com Sucesso<h1>
                
        
    </body>
</html>

            
                  
        </c:when> 
        <c:otherwise>
            <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SetDataSource</title>
    </head>
    <body>
        <h1>Não foi especificado código de parametro para apagar respectivo registro<h1><br>${param.cod}
    </body>
</html>
            </c:otherwise>
            </c:choose>
       
                
