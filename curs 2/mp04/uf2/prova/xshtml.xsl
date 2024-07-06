<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <!-- Plantilla para cada especie -->
    <xsl:template match="/institut/cicles" >
        
        <xsl:variable name="especialitat" select="especialitat"/>
        
        <!-- Crear una tabla para mostrar la información de la especie -->
        <table border="1" cellpadding="5">
           
            <tr bgcolor="green">
                <td>Cicle</td>
                <td>Cicle</td>
                <td>Cicle</td>
                <td>Cicle</td>
            </tr>
            <!-- Aplicar la plantilla para cada element "data" -->
            <xsl:apply-templates select="$especialitat"/>
        </table>
        <br/>
    </xsl:template>
    
    <!-- Plantilla para cada element "data" -->
    <xsl:template match="/cicles/especialitat">
        <xsl:variable name="cicle" select="@id"/>
        <xsl:variable name="cicle" select="@id"/>
        <xsl:variable name="cicle" select="@id"/>
        <xsl:variable name="cicle" select="@id"/>
       
    </xsl:template>
    
    
    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Institut Daniel Blanxart</title>
            </head>
            <body>
                <center><h1>Institut Daniel Blanxart</h1></center>
                
               
                <center><xsl:apply-templates select="/institut/cicles"/></center>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>   
