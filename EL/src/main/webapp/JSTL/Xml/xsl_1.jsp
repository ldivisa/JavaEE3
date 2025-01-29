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
    <taqqualquer>
        VideoAulas Neri
    </taqqualquer>
</c:set>


<!-- Criar documento XSL -->
<c:set var="documentoxsl">
<?xml version = "1.0"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="text()"> 
        <b><p style="font-size: 18px; color: blue">
        <xsl:value-of select="."/>          
        </p> </b>
    </xsl:template>
    </xsl:stylesheet>
</c:set>

Resultado:<br>
<c:out value="${documentoxsl}"/>
<br>
<x:transform doc="${documentoxml}" xslt="${documentoxsl}"/>



