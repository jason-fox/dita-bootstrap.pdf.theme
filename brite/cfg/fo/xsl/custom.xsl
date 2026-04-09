<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
  exclude-result-prefixes="fox"
  version="2.0"
>

  <!-- Custom XSL overrides for the Brite theme -->
  
  <!-- Custom XSL overrides for the Brite theme -->
  
  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="background-color"><xsl:value-of select="$prismjs.background.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <xsl:attribute name="border-width"><xsl:value-of select="$bootstrap-border-width"/></xsl:attribute>
    <xsl:attribute name="border-bottom-width">4.25pt</xsl:attribute>
    <xsl:attribute name="border-right-width">4.25pt</xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <xsl:attribute name="border-bottom-width">4.25pt</xsl:attribute>
    <xsl:attribute name="border-right-width">4.25pt</xsl:attribute>
    <!-- Neo-Brutalist Hard Shadow Simulation via Thick Black Borders (3px offset) -->
    <!-- 2pt base + 2.25pt (3px) = 4.25pt -->
  </xsl:template>

  <!-- Brite Theme: Suppress @outline for buttons - Always render as solid buttons -->
  <xsl:template match="*[contains(@class, ' bootstrap-d/button ')]" mode="bootstrapDecoration" priority="20">
    <xsl:variable name="theme" select="(@color, 'primary')[1]"/>
    <xsl:call-template name="processBootstrapAttrSetReflection">
      <xsl:with-param name="attrSet" select="concat('__btn__', $theme)"/>
    </xsl:call-template>
    <!-- Chain to the base Brite decorator for shadows -->
    <xsl:next-match/>
  </xsl:template>

</xsl:stylesheet>
