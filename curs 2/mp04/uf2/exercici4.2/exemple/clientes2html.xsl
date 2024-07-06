<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de clientes</title>
      </head>
      <body>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Nombre</th>
            <th>Correos</th>
            <th>Teléfonos</th>
            <th>Identificador</th>
          </tr>
          <xsl:apply-templates select="clientes/cliente"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cliente">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td>
        <xsl:for-each select="correos/correo">
          <xsl:value-of select="."/><br/>
        </xsl:for-each>
      </td>
      <td>
        <xsl:for-each select="telefonos/telefono">
          <xsl:value-of select="."/><br/>
        </xsl:for-each>
      </td>
      <td><xsl:value-of select="@id"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
