<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="background-color"><xsl:value-of select="$prismjs.background.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-top-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-bottom-width">3pt</xsl:attribute>
    <xsl:attribute name="border-left-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-secondary"/></xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:variable name="theme">
      <xsl:choose>
        <!-- Specialized alerts store the theme in the @color attribute -->
        <xsl:when test="@color"><xsl:value-of select="@color"/></xsl:when>
        <!-- Notes use @type -->
        <xsl:when test="@type='danger' or @type='restriction'">danger</xsl:when>
        <xsl:when test="@type='warning' or @type='caution' or @type='attention' or @type='remember'">warning</xsl:when>
        <xsl:when test="@type='important'">primary</xsl:when>
        <xsl:when test="@type='note' or @type='notice' or @type='tip' or @type='fastpath'">info</xsl:when>
        <!-- Outputclass fallback -->
        <xsl:when test="contains(@outputclass, 'alert-primary')">primary</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-secondary')">secondary</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-success')">success</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-info')">info</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-warning')">warning</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-danger')">danger</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-light')">light</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-dark')">dark</xsl:when>
        <xsl:otherwise>secondary</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="border-color-name" select="concat('bootstrap-', $theme, '-alert-border')"/>
    <xsl:variable name="border-color" select="$bootstrap-settings/entry[@name=$border-color-name]"/>

    <xsl:if test="$border-color">
      <xsl:attribute name="border-color" select="$border-color"/>
    </xsl:if>

    <xsl:attribute name="border-top-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-bottom-width">3pt</xsl:attribute>
    <xsl:attribute name="border-left-width">0.75pt</xsl:attribute>
    <!-- Lumen style: 0 1px 4px 1px -->
  </xsl:template>

</xsl:stylesheet>
