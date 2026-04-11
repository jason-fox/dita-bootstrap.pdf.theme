<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <xsl:import href="cfg:fo/xsl/tables.xsl"/>


  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:call-template name="bootstrapBorderless"/>
  </xsl:template>
</xsl:stylesheet>
