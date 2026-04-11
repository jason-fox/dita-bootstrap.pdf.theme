<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Lux Theme Customizations -->

  <xsl:import href="./tables.xsl"/>


  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:if test="not(@outline = 'yes' or @border or @bordercolor or contains(@outputclass, 'border') or contains(@class, ' bootstrap-d/card '))">
      <xsl:attribute name="border-style">none</xsl:attribute>
      <xsl:attribute name="border-width">0pt</xsl:attribute>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
