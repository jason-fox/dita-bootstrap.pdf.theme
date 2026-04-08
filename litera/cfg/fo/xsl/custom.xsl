<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Litera Theme Customizations -->
  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-width">0pt</xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
