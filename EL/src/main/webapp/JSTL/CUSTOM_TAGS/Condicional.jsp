<%-- 
    Document   : InterfaceTag
    Created on : 12 de fev. de 2025, 10:47:54
    Author     : luiz.souza
--%>

<%@taglib uri="http://depositodivisa.hopto.org" prefix="luiz" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Condicional Tag</title>
    </head>
    <body>
        <h1>Condicional Tag</h1>
        <luiz:tagif>
            <luiz:analisecondicional>
                7>8
            </luiz:analisecondicional>
            <luiz:condicaofalsa>
                Deu condicao falsa
            </luiz:condicaofalsa>
            
                <luiz:condicaoverdadeira>
                    Deu condicao verdadeira
                </luiz:condicaoverdadeira>
                
            
        </luiz:tagif>
        
    </body>
</html>
