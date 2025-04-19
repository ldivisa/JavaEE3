<%@taglib tagdir="/WEB-INF/tags" prefix="teste" %>


<form method="get">
    <teste:input nome="Nome" tamanho="40" tipo="text"/>
    <teste:input nome="Senha" tamanho="40" tipo="password"/>
    <teste:selectoption delimitador="," listaselect="1,2,3,4,5,6" nomeselect="testedselect" sizeselect="10" />
</form>