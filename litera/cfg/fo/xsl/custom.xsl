<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Litera Theme Customizations -->
  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="background-color"><xsl:value-of select="$prismjs.background.color"/></xsl:attribute>
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-width">0pt</xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:if test="not(@outline = 'yes' or @border or @bordercolor or contains(@outputclass, 'border'))">
      <xsl:attribute name="border-style">none</xsl:attribute>
      <xsl:attribute name="border-width">0pt</xsl:attribute>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
