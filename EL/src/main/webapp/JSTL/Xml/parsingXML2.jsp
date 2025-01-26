<%-- 
    Document   : xmlSetting
    Created on : 22 de jan. de 2025, 12:24:22
    Author     : luiz.souza<dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jsp-api</artifactId>
            <version>2.0</version>
        </dependency><dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jsp-api</artifactId>
            <version>2.0</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.3</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.3</version>
        </dependency>
--%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
      <title>Trabalhando com XML</title>
         <c:import var="importCursos" url="cursos.xml" />  
         <c:set var="cor1" value="lightgrey" />
         <c:set var="cor2" value="lightblue" />
         <c:set var="contador" value="0"/>
         <x:parse var="parseCursos" xml="${importCursos}" />
         
   </head>
    <body>
        <div id="paginaHome">
        <h1>XML - parsing</h1>
 <table border="1">
    <theader>
        <thead>
            <tr>
            <td>Descrição</td>
            <td>Autor</td>
            <td>Valor</td>
            <td>Nível</td>
            </tr>
        </thead>
    </theader>
        <tbody> 
            <x:forEach select="$parseCursos/cursos/curso" varStatus="estado" var="atual">
                <c:choose>
                    <c:when test="${contador %2 ==0 }">
                        <tr style='background-color: ${cor1}'>
                    </c:when>
                    <c:when test="${contador %2 !=0 }">
                        <tr style='background-color: ${cor2}'>
                    </c:when>        
                </c:choose> 
                    <td><x:out select="descricao"/></td>
                    <td><x:out select="autor"/></td>
                    <td><x:out select="preco"/></td>
                    <td><x:out select="nivel"/></td>
                </tr>
                <c:set var="contador" value="${contador +1}"/>
            </x:forEach>    
            <tr>
                <td colspan="4">
                     Existem <c:out value="${contador}"/> registros
            </tr>
        </tbody>
</table>
                     
        </div>
        
    </body>
    
</html>


