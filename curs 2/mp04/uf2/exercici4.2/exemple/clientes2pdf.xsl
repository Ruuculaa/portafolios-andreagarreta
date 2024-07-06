<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="simpleA4" page-height="29.7cm" page-width="21.0cm" margin-top="2cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm">
          <fo:region-body margin-top="3cm" margin-bottom="2.5cm"/>
          <fo:region-before extent="2cm"/>
          <fo:region-after extent="1.5cm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="simpleA4">
        <fo:flow flow-name="xsl-region-body">
          <fo:table border="solid 1px black">
            <fo:table-column column-width="1cm"/>
            <fo:table-column column-width="4cm"/>
            <fo:table-column column-width="7cm"/>
            <fo:table-column column-width="5cm"/>
            <fo:table-header>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block>ID</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block>Nombre</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block>Correo electrónico</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block>Teléfono</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-header>
            <fo:table-body>
              <xsl:for-each select="clientes/cliente">
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block><xsl:value-of select="@id"/></fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block><xsl:value-of select="nombre"/></fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block>
                      <xsl:for-each select="correos/correo">
                        <fo:block><xsl:value-of select="."/></fo:block>
                      </xsl:for-each>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block>
                      <xsl:for-each select="telefonos/telefono">
                        <fo:block><xsl:value-of select="."/></fo:block>
                      </xsl:for-each>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </xsl:for-each>
            </fo:table-body>
          </fo:table>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>