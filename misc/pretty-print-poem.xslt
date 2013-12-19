<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
   version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="poema">
  <html>
    <head>
      <title><xsl:value-of select="título"/></title>
    </head>
    <body>
      <xsl:apply-templates select="título, autor, estrofa, fecha"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="título">
  <div align="center">
    <h1><xsl:value-of select="."/></h1>
  </div>
</xsl:template>

<xsl:template match="autor">
  <div align="center">
    <h2>Por <xsl:value-of select="."/></h2>
  </div>
</xsl:template>

<xsl:template match="fecha">
  <p><i><xsl:value-of select="."/></i></p>
</xsl:template>

<xsl:template match="estrofa">
  <p>
    <xsl:apply-templates select="línea"/>
  </p>
</xsl:template>

<xsl:template match="línea">
  <xsl:if test="position() mod 2 = 0">&#160;&#160;</xsl:if>
  <xsl:value-of select="."/><br/>
</xsl:template>
</xsl:stylesheet>
