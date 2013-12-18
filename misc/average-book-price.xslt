<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
   version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">
   <averageBookPrice>
      <xsl:value-of select="avg(//book/@price)"/>
   </averageBookPrice>
</xsl:template>

</xsl:stylesheet>
