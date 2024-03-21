<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Information</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Employee Information</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
          </tr>
          <xsl:apply-templates select="employees/employee"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="employee">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td>
        <xsl:for-each select="phones/phone">
          <xsl:value-of select="concat(., ' (', @Type, ')')"/>
          <xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>
      </td>
      <td><xsl:value-of select="email"/></td>
      <td>
        <xsl:value-of select="concat(addresses/address/Street, ', ', addresses/address/BuildingNumber, ', ', addresses/address/City, ', ', addresses/address/Region, ', ', addresses/address/Country)"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
