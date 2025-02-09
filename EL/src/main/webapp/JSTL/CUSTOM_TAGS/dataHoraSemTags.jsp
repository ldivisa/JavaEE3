<%-- 
    Document   : dataHoraSemTags
    Created on : Feb 9, 2025, 2:27:19 PM
    Author     : luiz
--%>

<%@page import="java.time.Year"%>
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
    String[] diasSemana={"Segunda", "Terça","Quarta","Quinta","Sexta","Sábado","Domingo"};
    String[] mesesAno={"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    Calendar calendar = Calendar.getInstance();
    String diaSemana= diasSemana[calendar.DAY_OF_WEEK-1] ;
    String mesAno=mesesAno[calendar.MONTH-1];
        out.print("Hoje é "+diaSemana+", "+calendar.DAY_OF_MONTH+
        " de "+mesAno+" de "+calendar.get(Calendar.YEAR));

        %>
    </body>
</html>
