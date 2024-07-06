<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <!-- Plantilla para cada especie -->
    <xsl:template match="especie" >
        <xsl:variable name="especieNom" select="nom"/>
        <xsl:variable name="especieNomCientific" select="nomCientific"/>
        <xsl:variable name="especieData" select="data"/>
        
        <!-- Crear una tabla para mostrar la información de la especie -->
        <table border="1" cellpadding="5">
            <caption>
                <h2><xsl:value-of select="$especieNom"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="$especieNomCientific"/></h2>
            </caption>
            <tr bgcolor="#9acd32">
                <th>Data</th>
                <th>Humitat Màxima</th>
                <th>Humitat Mínima</th>
                <th>Temperatura Mitjana</th>
                <th>Naixement</th>
                <th>Estat</th>
                <th>Quantitat</th>
            </tr>
            <!-- Aplicar la plantilla para cada element "data" -->
            <xsl:apply-templates select="$especieData"/>
        </table>
        <br/>
    </xsl:template>
    
    <!-- Plantilla para cada element "data" -->
    <xsl:template match="data">
        <xsl:variable name="dataDia" select="@dia"/>
        <xsl:variable name="humitatMaxima" select="humitatMaxima"/>
        <xsl:variable name="humitatMinima" select="humitatMinima"/>
        <xsl:variable name="temperaturaMitjana" select="temperaturaMitjana"/>
        
        <!-- Aplicar la plantilla para cada element "naixement" dentro de "data" -->
        <xsl:apply-templates select="naixement">
            <xsl:with-param name="dataDia" select="$dataDia"/>
            <xsl:with-param name="humitatMaxima" select="$humitatMaxima"/>
            <xsl:with-param name="humitatMinima" select="$humitatMinima"/>
            <xsl:with-param name="temperaturaMitjana" select="$temperaturaMitjana"/>
        </xsl:apply-templates>
    </xsl:template>
    
    <!-- Plantilla para cada element "naixement" -->
    <xsl:template match="naixement">
        <xsl:param name="dataDia"/>
        <xsl:param name="humitatMaxima"/>
        <xsl:param name="humitatMinima"/>
        <xsl:param name="temperaturaMitjana"/>
        
        <tr>
            <!-- Si es el primer naixement de la data, mostrar la data -->
            <xsl:if test="position() = 1">
                <td rowspan="{count(../naixement)}">
                    <xsl:value-of select="$dataDia"/>
                </td>
                <td rowspan="{count(../naixement)}">
                    <xsl:value-of select="$humitatMaxima"/>
                </td>
                <td rowspan="{count(../naixement)}">
                    <xsl:value-of select="$humitatMinima"/>
                </td>
                <td rowspan="{count(../naixement)}">
                    <xsl:value-of select="$temperaturaMitjana"/>
                </td>
            </xsl:if>
            <!-- Mostrar la informacion del naixement -->
            <td>
                <xsl:value-of select="@hora"/>
            </td>
            <td>
                <xsl:value-of select="estat"/>
            </td>
            <td>
                <xsl:value-of select="quantitat"/>
            </td>
        </tr>
    </xsl:template>
    
    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Informació de les Papallones</title>
            </head>
            <body>
                <center><h1>Informació de les Papallones</h1></center>
                <!-- Aplicar la plantilla para cada element "especie" -->
               
                <center><xsl:apply-templates select="//especie"/></center>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>   
