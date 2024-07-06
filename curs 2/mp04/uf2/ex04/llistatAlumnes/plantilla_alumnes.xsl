<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8"/>

    <xsl:template match="/alumnes">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="estils.css"/>
            </head>
            <body>
                <div class="categoria">Llistat d'alumnes</div>
                <table>
                    <xsl:apply-templates select="alumne"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="alumne">
        <tr>
            <td>
                <img src="{../foto}" height="100" class="img"/>
            </td>
            <td>
                <div class="titol">
                    <xsl:value-of select="nom"/>
                </div>
                <div class="info">
                    <div class="edad">Edat: <xsl:value-of select="edat"/></div>
                    <div class="curso">Curs: <xsl:value-of select="curs"/></div>
                </div>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
