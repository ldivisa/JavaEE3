<%@tag body-content="empty" %>
<%@attribute name="nome" required="true" %> 
<%@attribute name="tamanho" required="true" %> 
<%@attribute name="tipo" required="true" %> 

<label for="${nome}">${nome}:</label>
<input name="${nome}" size="${tamanho}" type="${tipo}" />