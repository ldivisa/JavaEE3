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
        <c:set var="cor0" value="lightgreen"/>
        <c:set var="cor1" value="lightgrey"/>
        <c:set var="cor2" value="lightblue"/>
        <sql:setDataSource  
            url="jdbc:postgresql://localhost/javaWebIII"
            driver="org.postgresql.Driver"
            user="postgres"
            password="${senha}"
            var="JavaEE"
            />
        <sql:query dataSource="${JavaEE}"
                   var="resultado">
         select * from pessoas where pesnome = ?
         <sql:param value="${param.nomefiltrar}" />
                   
        </sql:query>>     
        
        
        <table border='1' style="text-align: center">
            <thead style="background-color: ${cor0}">
                <tr ><td>Código</td>
                <td >Nome</td>
                <td>Email</td>
                <td>Data Nascimento</td>
                
                </tr>
               </thead>
        <c:set var="tabela_odd" value="0"/>
        
        
        <c:forEach 
               items="${resultado.rows}"
               var="iteracao"
               varStatus="i"
               >
            
             <!--{$i.index %2 == 0}?<tr style="background-color: blue">:<tr style="background-color: red"> -->
            <c:if test="${i.index %2 == 0}">
                <tr style="background-color: ${cor1}" >
                <!-- resultado: ${$i.index %2 == 0}- index ${i.index} - par<br> -->
            </c:if>
                <c:if test="${i.index %2 > 0}">
                    <tr style="background-color: ${cor2}">
                    <!--resultado: ${$i.index %2 >= 1}- index ${i.index} - impar<br>-->
                    
                </c:if>    
               
                <td>${iteracao['pesCodigo']}</td><!-- comment -->
                <td>${iteracao['pesNome']}</td><!-- comment -->
                <td>${iteracao['pesEmail']}</td><!-- comment -->
                <td><fmt:formatDate value="${iteracao['pesdatanasc']}" dateStyle="SHORT" /></td><!-- comment -->
            </tr>
            
            <c:set var="totalRegistros" value="${i.count}" />
            
        </c:forEach>
            <tr> <td colspan="4"> O total de registros é ${resultado.rowCount} </td></tr>                    
         O total de registros é ${totalRegistros}                    
        </table>
    </body>
</html>
