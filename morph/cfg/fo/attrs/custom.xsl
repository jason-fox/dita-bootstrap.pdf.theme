<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Morph Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#485785</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d7e8fe</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#163865</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d7e8fe</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#7b8ab8</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f7f9fc</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#575b60</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f7f9fc</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#7b8ab8</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d9f5d4</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1b5210</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d9f5d4</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#7b8ab8</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#dee0fd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#242762</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dee0fd</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#7b8ab8</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff3cd</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#664d03</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff3cd</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#7b8ab8</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fad3d4</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#5c0f10</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fad3d4</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#7b8ab8</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f0f5fa</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f0f5fa</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f0f5fa</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#7b8ab8</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#212529</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#7b8ab8</xsl:variable>
  <xsl:variable name="bootstrap-border-color">rgba(55, 94, 148, 0.1)</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>

  <!-- Reflection Map Override (Required for dita-bootstrap.pdf component reflection) -->
  <xsl:variable name="bootstrap-settings">
    <entry name="bootstrap-primary"><xsl:value-of select="$bootstrap-primary"/></entry>
    <entry name="bootstrap-secondary"><xsl:value-of select="$bootstrap-secondary"/></entry>
    <entry name="bootstrap-success"><xsl:value-of select="$bootstrap-success"/></entry>
    <entry name="bootstrap-danger"><xsl:value-of select="$bootstrap-danger"/></entry>
    <entry name="bootstrap-warning"><xsl:value-of select="$bootstrap-warning"/></entry>
    <entry name="bootstrap-info"><xsl:value-of select="$bootstrap-info"/></entry>
    <entry name="bootstrap-link"><xsl:value-of select="$bootstrap-link"/></entry>
    <entry name="bootstrap-table-primary-bg"><xsl:value-of select="$bootstrap-table-primary-bg"/></entry>
    <entry name="bootstrap-table-primary-color"><xsl:value-of select="$bootstrap-table-primary-color"/></entry>
    <entry name="bootstrap-btn-primary-bg"><xsl:value-of select="$bootstrap-btn-primary-bg"/></entry>
    <entry name="bootstrap-btn-primary-color"><xsl:value-of select="$bootstrap-btn-primary-color"/></entry>
    <entry name="bootstrap-badge-primary-bg"><xsl:value-of select="$bootstrap-badge-primary-bg"/></entry>
    <entry name="bootstrap-badge-primary-color"><xsl:value-of select="$bootstrap-badge-primary-color"/></entry>
    <entry name="bootstrap-table-secondary-bg"><xsl:value-of select="$bootstrap-table-secondary-bg"/></entry>
    <entry name="bootstrap-table-secondary-color"><xsl:value-of select="$bootstrap-table-secondary-color"/></entry>
    <entry name="bootstrap-btn-secondary-bg"><xsl:value-of select="$bootstrap-btn-secondary-bg"/></entry>
    <entry name="bootstrap-btn-secondary-color"><xsl:value-of select="$bootstrap-btn-secondary-color"/></entry>
    <entry name="bootstrap-badge-secondary-bg"><xsl:value-of select="$bootstrap-badge-secondary-bg"/></entry>
    <entry name="bootstrap-badge-secondary-color"><xsl:value-of select="$bootstrap-badge-secondary-color"/></entry>
    <entry name="bootstrap-table-success-bg"><xsl:value-of select="$bootstrap-table-success-bg"/></entry>
    <entry name="bootstrap-table-success-color"><xsl:value-of select="$bootstrap-table-success-color"/></entry>
    <entry name="bootstrap-btn-success-bg"><xsl:value-of select="$bootstrap-btn-success-bg"/></entry>
    <entry name="bootstrap-btn-success-color"><xsl:value-of select="$bootstrap-btn-success-color"/></entry>
    <entry name="bootstrap-badge-success-bg"><xsl:value-of select="$bootstrap-badge-success-bg"/></entry>
    <entry name="bootstrap-badge-success-color"><xsl:value-of select="$bootstrap-badge-success-color"/></entry>
    <entry name="bootstrap-table-info-bg"><xsl:value-of select="$bootstrap-table-info-bg"/></entry>
    <entry name="bootstrap-table-info-color"><xsl:value-of select="$bootstrap-table-info-color"/></entry>
    <entry name="bootstrap-btn-info-bg"><xsl:value-of select="$bootstrap-btn-info-bg"/></entry>
    <entry name="bootstrap-btn-info-color"><xsl:value-of select="$bootstrap-btn-info-color"/></entry>
    <entry name="bootstrap-badge-info-bg"><xsl:value-of select="$bootstrap-badge-info-bg"/></entry>
    <entry name="bootstrap-badge-info-color"><xsl:value-of select="$bootstrap-badge-info-color"/></entry>
    <entry name="bootstrap-table-warning-bg"><xsl:value-of select="$bootstrap-table-warning-bg"/></entry>
    <entry name="bootstrap-table-warning-color"><xsl:value-of select="$bootstrap-table-warning-color"/></entry>
    <entry name="bootstrap-btn-warning-bg"><xsl:value-of select="$bootstrap-btn-warning-bg"/></entry>
    <entry name="bootstrap-btn-warning-color"><xsl:value-of select="$bootstrap-btn-warning-color"/></entry>
    <entry name="bootstrap-badge-warning-bg"><xsl:value-of select="$bootstrap-badge-warning-bg"/></entry>
    <entry name="bootstrap-badge-warning-color"><xsl:value-of select="$bootstrap-badge-warning-color"/></entry>
    <entry name="bootstrap-table-danger-bg"><xsl:value-of select="$bootstrap-table-danger-bg"/></entry>
    <entry name="bootstrap-table-danger-color"><xsl:value-of select="$bootstrap-table-danger-color"/></entry>
    <entry name="bootstrap-btn-danger-bg"><xsl:value-of select="$bootstrap-btn-danger-bg"/></entry>
    <entry name="bootstrap-btn-danger-color"><xsl:value-of select="$bootstrap-btn-danger-color"/></entry>
    <entry name="bootstrap-badge-danger-bg"><xsl:value-of select="$bootstrap-badge-danger-bg"/></entry>
    <entry name="bootstrap-badge-danger-color"><xsl:value-of select="$bootstrap-badge-danger-color"/></entry>
    <entry name="bootstrap-table-light-bg"><xsl:value-of select="$bootstrap-table-light-bg"/></entry>
    <entry name="bootstrap-table-light-color"><xsl:value-of select="$bootstrap-table-light-color"/></entry>
    <entry name="bootstrap-btn-light-bg"><xsl:value-of select="$bootstrap-btn-light-bg"/></entry>
    <entry name="bootstrap-btn-light-color"><xsl:value-of select="$bootstrap-btn-light-color"/></entry>
    <entry name="bootstrap-badge-light-bg"><xsl:value-of select="$bootstrap-badge-light-bg"/></entry>
    <entry name="bootstrap-badge-light-color"><xsl:value-of select="$bootstrap-badge-light-color"/></entry>
    <entry name="bootstrap-table-dark-bg"><xsl:value-of select="$bootstrap-table-dark-bg"/></entry>
    <entry name="bootstrap-table-dark-color"><xsl:value-of select="$bootstrap-table-dark-color"/></entry>
    <entry name="bootstrap-btn-dark-bg"><xsl:value-of select="$bootstrap-btn-dark-bg"/></entry>
    <entry name="bootstrap-btn-dark-color"><xsl:value-of select="$bootstrap-btn-dark-color"/></entry>
    <entry name="bootstrap-badge-dark-bg"><xsl:value-of select="$bootstrap-badge-dark-bg"/></entry>
    <entry name="bootstrap-badge-dark-color"><xsl:value-of select="$bootstrap-badge-dark-color"/></entry>
    <entry name="bootstrap-light"><xsl:value-of select="$bootstrap-light"/></entry>
    <entry name="bootstrap-dark"><xsl:value-of select="$bootstrap-dark"/></entry>
    
    <entry name="bootstrap-primary-subtle"><xsl:value-of select="$bootstrap-primary-subtle"/></entry>
    <entry name="bootstrap-primary-subtle-text"><xsl:value-of select="$bootstrap-primary-subtle-text"/></entry>
    <entry name="bootstrap-secondary-subtle"><xsl:value-of select="$bootstrap-secondary-subtle"/></entry>
    <entry name="bootstrap-secondary-subtle-text"><xsl:value-of select="$bootstrap-secondary-subtle-text"/></entry>
    <entry name="bootstrap-success-subtle"><xsl:value-of select="$bootstrap-success-subtle"/></entry>
    <entry name="bootstrap-success-subtle-text"><xsl:value-of select="$bootstrap-success-subtle-text"/></entry>
    <entry name="bootstrap-danger-subtle"><xsl:value-of select="$bootstrap-danger-subtle"/></entry>
    <entry name="bootstrap-danger-subtle-text"><xsl:value-of select="$bootstrap-danger-subtle-text"/></entry>
    <entry name="bootstrap-warning-subtle"><xsl:value-of select="$bootstrap-warning-subtle"/></entry>
    <entry name="bootstrap-warning-subtle-text"><xsl:value-of select="$bootstrap-warning-subtle-text"/></entry>
    <entry name="bootstrap-info-subtle"><xsl:value-of select="$bootstrap-info-subtle"/></entry>
    <entry name="bootstrap-info-subtle-text"><xsl:value-of select="$bootstrap-info-subtle-text"/></entry>
    <entry name="bootstrap-light-subtle">#fefefe</entry>
    <entry name="bootstrap-light-subtle-text">#141619</entry>
    <entry name="bootstrap-dark-subtle">#ced4da</entry>
    <entry name="bootstrap-dark-subtle-text">#141619</entry>

    <entry name="bootstrap-border-color"><xsl:value-of select="$bootstrap-border-color"/></entry>
    <entry name="bootstrap-border-width">1pt</entry>
    <entry name="bootstrap-rounded"><xsl:value-of select="$bootstrap-rounded"/></entry>

    <entry name="bootstrap-h1-font-size"><xsl:value-of select="$bootstrap-h1-font-size"/></entry>
    <entry name="bootstrap-h2-font-size"><xsl:value-of select="$bootstrap-h2-font-size"/></entry>
    <entry name="bootstrap-h3-font-size"><xsl:value-of select="$bootstrap-h3-font-size"/></entry>
    <entry name="bootstrap-h4-font-size"><xsl:value-of select="$bootstrap-h4-font-size"/></entry>
    <entry name="bootstrap-h5-font-size"><xsl:value-of select="$bootstrap-h5-font-size"/></entry>
    <entry name="bootstrap-h6-font-size"><xsl:value-of select="$bootstrap-h6-font-size"/></entry>
    
    <entry name="bootstrap-spacing-0">0</entry>
    <entry name="bootstrap-spacing-1">3pt</entry>
    <entry name="bootstrap-spacing-2">6pt</entry>
    <entry name="bootstrap-spacing-3">12pt</entry>
    <entry name="bootstrap-spacing-4">18pt</entry>
    <entry name="bootstrap-spacing-5">36pt</entry>
    <entry name="bootstrap-rounded-0">0</entry>
    <entry name="bootstrap-rounded-1">3pt</entry>
    <entry name="bootstrap-rounded-2">4pt</entry>
    <entry name="bootstrap-rounded-3">5pt</entry>
    <entry name="bootstrap-rounded-4">8pt</entry>
    <entry name="bootstrap-rounded-5">16pt</entry>
    <entry name="bootstrap-rounded-circle">50%</entry>
    <entry name="bootstrap-rounded-pill">100pt</entry>
    <entry name="bootstrap-display-1-font-size">60pt</entry>
    <entry name="bootstrap-display-2-font-size">52pt</entry>
    <entry name="bootstrap-display-3-font-size">44pt</entry>
    <entry name="bootstrap-display-4-font-size">36pt</entry>
    <entry name="bootstrap-display-5-font-size">28pt</entry>
    <entry name="bootstrap-display-6-font-size">24pt</entry>
    <entry name="bootstrap-display-font-weight">300</entry>
    <entry name="bootstrap-display-line-height">1.2</entry>
    <entry name="bootstrap-table-striped-color">#f2f2f2</entry>
  </xsl:variable>


  <!-- PrismJS code block styling aligned with Morph variables -->
  <xsl:variable name="prismjs.maintext.color"><xsl:value-of select="$bootstrap-body-color"/></xsl:variable>
  <xsl:variable name="prismjs.background.color">#f8f9fa</xsl:variable>
  <xsl:variable name="prismjs.token.comment.color">#888888</xsl:variable>
  <xsl:variable name="prismjs.token.punctuation.color">#495057</xsl:variable>
  <xsl:variable name="prismjs.token.atrule.color"><xsl:value-of select="$bootstrap-primary"/></xsl:variable>
  <xsl:variable name="prismjs.token.function.color"><xsl:value-of select="$bootstrap-info"/></xsl:variable>
  <xsl:variable name="prismjs.token.selector.color"><xsl:value-of select="$bootstrap-success"/></xsl:variable>
  <xsl:variable name="prismjs.token.property.color"><xsl:value-of select="$bootstrap-danger"/></xsl:variable>
  <xsl:variable name="prismjs.token.operator.color"><xsl:value-of select="$bootstrap-info"/></xsl:variable>
  <xsl:variable name="prismjs.token.regex.color"><xsl:value-of select="$bootstrap-warning"/></xsl:variable>


  <!-- Global Font Overrides -->
  <xsl:attribute-set name="__fo__root">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="base-font">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
    <xsl:attribute name="color">#485785</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="codeblock" use-attribute-sets="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="codeph">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
