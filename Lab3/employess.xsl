<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
          <link rel="stylesheet" type="text/css" href="./style.css" />
       
    </head>
    <body>
      <xsl:apply-templates select="employees"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="employees">
  <xsl:apply-templates select="employee"/>
</xsl:template>

<xsl:template match="employee">
  <div class="employee">
    <xsl:apply-templates select="name"/>
    <xsl:apply-templates select="phones"/>
    <xsl:apply-templates select="addresses"/>
    <xsl:apply-templates select="email"/>
  </div>
</xsl:template>

<xsl:template match="name">
  <div class="name">
    <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="phones">
  <div class="phones">
    <xsl:apply-templates select="phone"/>
  </div>
</xsl:template>

<xsl:template match="phone">
  <div class="phone">
    <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="addresses">
  <div class="addresses">
    <xsl:apply-templates select="address"/>
  </div>
</xsl:template>

<xsl:template match="address">
  <div class="address">
    <xsl:apply-templates/>
  </div>
</xsl:template>

<xsl:template match="email">
  <div class="email">
    <xsl:value-of select="."/>
  </div>
</xsl:template>

</xsl:stylesheet>
