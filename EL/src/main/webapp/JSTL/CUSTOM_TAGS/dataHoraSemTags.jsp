<%-- 
    Document   : dataHoraSemTags
    Created on : Feb 9, 2025, 2:27:19 PM
    Author     : luiz
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
    String[] diaSemana={"Domingo","Segunda", "Terça","Quarta","Quinta","Sexta","Sábado"};
    String[] mesAno={"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    Calendar calendar = Calendar.getInstance();
    String hoje= calendar.getTime().toString();
        out.print("Hoje "+hoje);

        %>
    </body>
</html>
