<%-- 
    Document   : xmlSetting
    Created on : 22 de jan. de 2025, 12:24:22
    Author     : luiz.souza<dependency>
           
--%>

<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="cursos.xml" var="documentoxml" />
<c:import url="cursos.xsl" var="documentoxsl" />

<x:transform doc="${documentoxml}" xslt="${documentoxsl}"/>






