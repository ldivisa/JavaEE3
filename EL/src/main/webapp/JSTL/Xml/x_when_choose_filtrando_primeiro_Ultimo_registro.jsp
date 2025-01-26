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
         <c:if test="${not empty param.codigo}" >
         <c:set var="cor1" value="lightgrey" />
         <c:set var="cor2" value="lightblue" />
         <c:set var="contador" value="0"/>
         <x:parse var="parseCursos" xml="${importCursos}" />
         
   </head>
    <body>
        <div id="paginaHome">
        <h1>XML - parsing</h1>
        <c:set var="codigo" scope="page" value="${param.codigo}" />
        <x:set var="curso" select="$parseCursos/cursos/curso[@codigo=$pageScope:codigo]"/>
        <x:if select="$parseCursos/cursos/curso[@codigo=$pageScope:codigo]">
            Ok existe
        </x:if>
            <x:choose >
                <x:when select="$parseCursos/cursos/curso[@codigo=$pageScope:codigo]">
                     <table border="1">
                        <theader>
                            <thead>
                                <tr>
                                <td>Código</td>
                                <td>Descrição</td>
                                <td>Autor</td>
                                <td>Valor</td>
                                <td>Nível</td>
                                </tr>
                            </thead>
                        </theader>
                            <tbody> 
                            <td><x:out select="$curso/codigo" /> </td><!-- comment -->
                            <td><x:out select="$curso/descricao" /> </td><!-- comment -->
                            <td><x:out select="$curso/autor" /> </td><!-- comment -->
                            <td><x:out select="$curso/preco" /> </td><!-- comment -->
                            <td><x:out select="$curso/nivel" /> </td><!-- comment -->

                            </tbody>
                    </table>
                </x:when>
                <x:otherwise>
                    <h1>Nao existe registro com o código ${codigo}</h1>
                </x:otherwise>
            </x:choose>
               
        </c:if>
        <c:if test="${empty param.codigo}">
            <h1>O código não foi informado</h1><!-- comment -->
        </c:if>
        </div>
        
        
    </body>
    
</html>


