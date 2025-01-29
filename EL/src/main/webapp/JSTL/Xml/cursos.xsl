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