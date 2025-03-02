<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes"/>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="CraftingTemplate[@id='OneHandedSword']"/>
	<xsl:template match="CraftingTemplate[@id='TwoHandedSword']"/>
	<xsl:template match="CraftingTemplate[@id='Dagger']"/>
	<xsl:template match="CraftingTemplate[@id='ThrowingKnife']"/>
	<xsl:template match="CraftingTemplate[@id='OneHandedAxe']"/>
	<xsl:template match="CraftingTemplate[@id='TwoHandedAxe']"/>
	<xsl:template match="CraftingTemplate[@id='ThrowingAxe']"/>
	<xsl:template match="CraftingTemplate[@id='TwoHandedPolearm']"/>
	<xsl:template match="CraftingTemplate[@id='Pike']"/>
	<xsl:template match="CraftingTemplate[@id='Javelin']"/>
	<xsl:template match="CraftingTemplate[@id='Mace']"/>
	<xsl:template match="CraftingTemplate[@id='TwoHandedMace']"/>
</xsl:stylesheet>
