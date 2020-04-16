<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:xalan="http://xml.apache.org/xslt">

	<xsl:output method="xml" encoding="UTF-8" indent="yes"
		xalan:indent-amount="4" />

	<xsl:strip-space elements="*" />

	<xsl:template match="*">
		<xsl:copy>
			<xsl:copy-of select="@*" />
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="interface-data" />

	<xsl:template match="files" />

	<xsl:template match="export-details">
		<export-details>
			<domain>dcm-export-cleaned</domain>
		</export-details>
	</xsl:template>

</xsl:stylesheet>
