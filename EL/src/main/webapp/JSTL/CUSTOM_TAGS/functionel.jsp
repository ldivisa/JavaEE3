<%-- 
    Document   : primeiraTag
    Created on : 3 de fev. de 2025, 12:42:54
    Author     : luiz.souza
--%>
<%@taglib uri="http://depositodivisa.hopto.org/operacoesbasicas" prefix ="op"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste funcao el tag</title>
    </head>
    
        <h1>Teste funcao el tag</h1>
        Soma de 1 e 1 => ${op:soma(1,1)}<br>
        Multiplicação de 1 por 1=> ${op:multiplicacao(1,1)}<br>       
        Subtração de 1 para 1 => ${op:subtracao(1,1)}<br>
        Divisão de 1 por 1 => ${op:divisao(1,1)}<br>
        <br>---------------------------------------------------------------------------------------<br>
        <b>Por parâmetro:</b><br>
        Soma de ${param.num1} e ${param.num2} => ${op:soma(param.num1,param.num2)}<br>
        Multiplicação de ${param.num1} e ${param.num2}=> ${op:multiplicacao(param.num1,param.num2)}<br>       
        Subtração de ${param.num1} e ${param.num2} => ${op:subtracao(param.num1,param.num2)}<br>
        Divisão de ${param.num1} e ${param.num2} => ${op:divisao(param.num1,param.num2)}<br>
    
</html>
