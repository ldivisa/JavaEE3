<%-- 
    Document   : setDataSource
    Created on : 19 de jan. de 2025, 09:59:33
    Author     : loja
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SetDataSource</title>
    </head>
    <body>
        <h1>DataSource</h1>
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
        <sql:query dataSource="${JavaEE}"
                   sql="select * from pessoas"
                   var="resultado"
                    />     
        
        <table border='1'>
            <thead>
                <tr><td>Código</td>
                <td>Nome</td>
                <td>Email</td>
                <td>Data Nascimento</td>
                
                </tr>
               </thead>
        <c:forEach 
               items="${resultado.rows}"
               var="iteracao"
               >
        
            <tr><td>${iteracao['pesCodigo']}</td><!-- comment -->
                <td>${iteracao['pesNome']}</td><!-- comment -->
                <td>${iteracao['pesEmail']}</td><!-- comment -->
                <td>${iteracao['pesdatanasc']}</td><!-- comment -->
            </tr>
            
        </c:forEach>
                             
        </table>
    </body>
</html>
