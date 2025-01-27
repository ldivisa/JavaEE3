<%-- 
    Document   : xmlSetting
    Created on : 22 de jan. de 2025, 12:24:22
    Author     : luiz.souza<dependency>
           
--%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
      <title>Trabalhando com XML- x:if</title>
         <c:import var="importCursos" url="cursos.xml" />  
          <x:parse var="parseCursos" xml="${importCursos}" />
         
   </head>
    <body>
        <div id="paginaHome">
        <h1>XML - parsing</h1>
        <h2> Primeiro Registro</h2>
        <x:set var="primeiroRegistro" select="$parseCursos/cursos/curso[1]" />
        <x:out select="$primeiroRegistro/codigo" />
        <x:out select="$primeiroRegistro/descricao" />
        
        <h2> Ultimo Registro</h2>
        <x:set var="ultimoRegistro" select="$parseCursos/cursos/curso[last()]" />
        <x:out select="$ultimoRegistro/codigo" />
        <x:out select="$ultimoRegistro/descricao" />
        </div>
        
        
    </body>
    
</html>


