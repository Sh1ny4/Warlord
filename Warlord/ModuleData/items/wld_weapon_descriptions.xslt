<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes"/>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="WeaponDescription[@id='OneHandedSword']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedBastardSword']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedBastardSwordAlternative']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedSword']"/>
	<xsl:template match="WeaponDescription[@id='Dagger']"/>
	<xsl:template match="WeaponDescription[@id='ThrowingKnife']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedAxe']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedBastardAxe']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedBastardAxeAlternative']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedAxe']"/>
	<xsl:template match="WeaponDescription[@id='ThrowingAxe']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedPolearm']"/>
	<xsl:template match="WeaponDescription[@id='OneHandedPolearm_JavelinAlternative']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedPolearm']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Couchable']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Pike']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Bracing']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Thrown']"/>
	<xsl:template match="WeaponDescription[@id='Javelin']"/>
	<xsl:template match="WeaponDescription[@id='Mace']"/>
	<xsl:template match="WeaponDescription[@id='TwoHandedMace']"/>
</xsl:stylesheet>
