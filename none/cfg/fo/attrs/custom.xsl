<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

  <!-- Typography Overrides (using logical names for maximum DITA-OT compatibility) -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable> <!-- Arial fallback -->
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable> <!-- Courier New fallback -->

  <!-- Override PrismJS code block styling based on custom CSS theme -->
  <xsl:variable name="prismjs.maintext.color">#000000</xsl:variable>
  <xsl:variable name="prismjs.background.color">#f5f2f0</xsl:variable>
  <xsl:variable name="prismjs.token.comment.color">#999999</xsl:variable>
  <xsl:variable name="prismjs.token.punctuation.color">#999999</xsl:variable>
  <xsl:variable name="prismjs.token.atrule.color">#0077aa</xsl:variable>
  <xsl:variable name="prismjs.token.function.color">#f08d49</xsl:variable>
  <xsl:variable name="prismjs.token.selector.color">#669900</xsl:variable>
  <xsl:variable name="prismjs.token.property.color">#e2777a</xsl:variable>
  <xsl:variable name="prismjs.token.operator.color">#67cdcc</xsl:variable>
  <xsl:variable name="prismjs.token.regex.color">#ee9900</xsl:variable>

  <!-- Global Font Overrides -->
  
  <!-- 1. Document Root (Body Text) -->
  <xsl:attribute-set name="__fo__root">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- 2. Base Font (Fallback for many elements) -->
  <xsl:attribute-set name="base-font">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- 3. Titles (Topic, Section, Fig titles) -->
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- 4. Monospaced elements (Pre, Codeblock, Codeph) -->
  <xsl:attribute-set name="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="codeblock" use-attribute-sets="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="codeph">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="__codeblock__language__" use-attribute-sets="codeblock">
  </xsl:attribute-set>

</xsl:stylesheet>
