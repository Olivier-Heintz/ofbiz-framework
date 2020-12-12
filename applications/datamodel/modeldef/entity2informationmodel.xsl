<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/entitymodel">
        <informationmodel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xmlns:xsd="http://www.w3.org/2000/10/XMLSchema"
              xsi:noNamespaceSchemaLocation="http://repository.ofbizextra.org/dtd/Informationmodel.xsd">
          <xsl:apply-templates select="entity"/>
        </informationmodel>
    </xsl:template>

    <xsl:template match="entity">
        <entity entity-name="{@entity-name}" package-name="{@package-name}">
            <xsl:element name="stereotype">
                <xsl:attribute name="name"><xsl:value-of select="'entity'"  /></xsl:attribute>
            </xsl:element>
        </entity>
    </xsl:template>
</xsl:stylesheet>