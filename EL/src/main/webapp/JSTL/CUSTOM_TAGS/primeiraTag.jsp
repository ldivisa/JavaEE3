<%-- 
    Document   : primeiraTag
    Created on : 3 de fev. de 2025, 12:42:54
    Author     : luiz.souza
--%>
<%@taglib uri="/WEB-INF/tlds/taglib.tld" prefix ="luiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeira TAG</title>
    </head>
    <body>
        <h1>Primeira TAG</h1>
           
            <br>
        <luiz:tempo />      
        <br><!-- comment -->
        <b>Com atributo interno :</b> <luiz:tempocomatributocomtag nome="Luiz" />
        <br>
        <b>Sem atributo:</b> <luiz:tempocomatributocomtag />
        <br> 
        <b>Com atributo de parâmetro:</b> <luiz:tempocomatributocomtag nome="${param.nome}" />
        <br><!-- comment -->
        <luiz:doStartTag-doEndTag />
        
    </body>
</html>
