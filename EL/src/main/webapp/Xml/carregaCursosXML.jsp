<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
  
<html>  
<head>  
  <title>x:parse Tag</title>  
</head>  
<body>  
<h2>Cursos Info:</h2>  
<c:import var="cursos" url="cursos.xml"/>  

<x:parse xml="${cursos}" var="output" />  
<x:forEach select="$output/cursos/curso">
    <x:out select="autor"/> <br>
</x:forEach> 
<br>
</body>  
</html>  
