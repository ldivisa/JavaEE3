<%-- 
    Document   : xmlSetting
    Created on : 22 de jan. de 2025, 12:24:22
    Author     : luiz.souza<dependency>
           
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Criar documento XML -->

<c:set var="documentoxml">
    <cursos>
        <curso>
            <descricao>Java para WEB III</descricao>
            <codigo>1</codigo>
            <autor>Neri</autor>
            <preco>129</preco>
            <nivel>Intermediario</nivel>
        </curso>

        <curso>
            <codigo>2</codigo>
            <descricao>Oracle</descricao>
            <autor>Iren</autor>
            <preco>130</preco>
            <nivel>Avancado</nivel>
        </curso>
    </cursos>
</c:set>


<!-- Criar documento XSL -->
<c:set var="documentoxsl">
    <?xml version = "1.0"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="cursos"> 
            <html>
            <head>
                <title> XSL e XML - transform </title>
            </head>
            <body>
                <h1> Lista de Cursos</h1>
                <table border="1">
                    <tr>
                        <td>Codigo</td>
                        <td>Descricao</td>
                        <td>Autor</td>
                        <td>Preco</td>
                        <td>Nivel</td>
                    </tr>
                    <xsl:for-each select="curso">
                        <tr bgcolor="lightyellow">
                            <td><xsl:value-of select="codigo"/> </td>
                            <td><xsl:value-of select="descricao"/> </td>
                            <td><xsl:value-of select="autor" /></td>
                            <td><xsl:value-of select="preco" /></td>
                            <td><xsl:value-of select="nivel" /></td>
                        </tr>
                    </xsl:for-each>
                 </table>
            </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>
</c:set>
    <x:transform doc="${documentoxml}" xslt="${documentoxsl}"/>






