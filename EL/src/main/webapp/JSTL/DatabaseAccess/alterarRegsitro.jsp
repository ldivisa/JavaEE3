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
        
    <c:catch var="erro">    
<sql:transaction dataSource="${JavaEE}">
            <sql:update>
                insert into pessoas (pesnome,pesemail) values ('TesteSQLTransaction','TesteSQLTransaction@gmail.com')
            </sql:update>
                <sql:update>
                insert into pessoas (pescodigo,pesnome,pesemail) values (1,'TesteSQLTransaction','TesteSQLTransaction@gmail.com')
            </sql:update>
            
        </sql:transaction>
</c:catch>
                <c:if test="${erro != null}"> 
                        <h1>Há erro: ${erro}</h1>
                </c:if>
                
            <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SetDataSource</title>
    </head>
    <body>
        <h1>Teste de transação SQL com JSTL<h1>
                
        
    </body>
</html>
                
