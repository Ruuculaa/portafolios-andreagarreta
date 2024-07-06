<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

        <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8"/>

        <xsl:template match="/receptes/recepta">
            <html>
                <head>
                    <link rel="stylesheet" type="text/css" href="estils.css"/>
                </head>
                <body>

                    <div class="categoria">Recetas de <xsl:value-of select="categoria"/>
                    </div>
                    <br />
                    <div class="titol">
                        <xsl:value-of select="nom"/>
                    </div>
                    <table>
                        <tr>
                            <td rowspan="2" class="foto">
                                <img src="{informacio_general/foto}" height="390"/>
                            </td>
                            <td class="info">
                                <b>Comensals </b>
                                <xsl:value-of select="informacio_general/comensals" />
                                <br />
                                <b>Temps </b>
                                <xsl:value-of select="informacio_general/temps" />
                                <xsl:value-of select="concat(' ',informacio_general/temps/@unitat)" />
                                <br />
                                <b>Dificultat </b>
                                <xsl:value-of select="informacio_general/dificultat" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="info2">
                                <span class="subtitol">Ingredients</span>
                                <br />
                                <br />
                                <span class="ingredients">
                                    <xsl:for-each select="ingredients/ingredient">
                                        <xsl:value-of select="@quantitat"/>
                                        <xsl:value-of select="concat(' ',.)"/>
                                        <br />
                                    </xsl:for-each>
                                </span>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <span class="subtitol">Preparació</span>
                    <br />

                    <xsl:for-each select="preparacio/pas">
                        <div class="rodona">
                            <xsl:value-of select="@numero"/>
                        </div>
                        <div class="prepa">
                            <xsl:value-of select="." />
                        </div>
                    </xsl:for-each>
                    <br/>

                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>
