<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/"
	xmlns:mdt="http://standards.iso.org/iso/19115/-3/mdt/1.0" xmlns:mex="http://standards.iso.org/iso/19115/-3/mex/1.0"
	xmlns:mpc="http://standards.iso.org/iso/19115/-3/mpc/1.0" xmlns:gml="http://www.opengis.net/gml/3.2"
	xmlns:mmi="http://standards.iso.org/iso/19115/-3/mmi/1.0" xmlns:msr="http://standards.iso.org/iso/19115/-3/msr/1.0"
	xmlns:mrc="http://standards.iso.org/iso/19115/-3/mrc/1.0" xmlns:mac="http://standards.iso.org/iso/19115/-3/mac/1.0"
	xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:mrd="http://standards.iso.org/iso/19115/-3/mrd/1.0"
	xmlns:mri="http://standards.iso.org/iso/19115/-3/mri/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:cat="http://standards.iso.org/iso/19115/-3/cat/1.0" xmlns:mdq="http://standards.iso.org/iso/19157/-2/mdq/1.0"
	xmlns:mrl="http://standards.iso.org/iso/19115/-3/mrl/1.0" xmlns:gcx="http://standards.iso.org/iso/19115/-3/gcx/1.0"
	xmlns:mrs="http://standards.iso.org/iso/19115/-3/mrs/1.0" xmlns:srv="http://standards.iso.org/iso/19115/-3/srv/2.0"
	xmlns:cit="http://standards.iso.org/iso/19115/-3/cit/1.0" xmlns:mas="http://standards.iso.org/iso/19115/-3/mas/1.0"
	xmlns:mcc="http://standards.iso.org/iso/19115/-3/mcc/1.0" xmlns:gex="http://standards.iso.org/iso/19115/-3/gex/1.0"
	xmlns:mda="http://standards.iso.org/iso/19115/-3/mda/1.0" xmlns:lan="http://standards.iso.org/iso/19115/-3/lan/1.0"
	xmlns:gco="http://standards.iso.org/iso/19115/-3/gco/1.0" xmlns:mco="http://standards.iso.org/iso/19115/-3/mco/1.0"
	xmlns:mds="http://standards.iso.org/iso/19115/-3/mds/1.0" xmlns:mdb="http://standards.iso.org/iso/19115/-3/mdb/1.0"

	xmlns:util="http://temp"
	xsi:schemaLocation="http://standards.iso.org/iso/19115/-3/cat/1.0 http://standards.iso.org/iso/19115/-3/cat/1.0/cat.xsd http://standards.iso.org/iso/19115/-3/cit/1.0 http://standards.iso.org/iso/19115/-3/cit/1.0/cit.xsd http://standards.iso.org/iso/19115/-3/gcx/1.0 http://standards.iso.org/iso/19115/-3/gcx/1.0/gcx.xsd http://standards.iso.org/iso/19115/-3/gex/1.0 http://standards.iso.org/iso/19115/-3/gex/1.0/gex.xsd http://standards.iso.org/iso/19115/-3/lan/1.0 http://standards.iso.org/iso/19115/-3/lan/1.0/lan.xsd http://standards.iso.org/iso/19115/-3/srv/2.0 http://standards.iso.org/iso/19115/-3/srv/2.0/srv.xsd http://standards.iso.org/iso/19115/-3/mas/1.0 http://standards.iso.org/iso/19115/-3/mas/1.0/mas.xsd http://standards.iso.org/iso/19115/-3/mcc/1.0 http://standards.iso.org/iso/19115/-3/mcc/1.0/mcc.xsd http://standards.iso.org/iso/19115/-3/mco/1.0 http://standards.iso.org/iso/19115/-3/mco/1.0/mco.xsd http://standards.iso.org/iso/19115/-3/mda/1.0 http://standards.iso.org/iso/19115/-3/mda/1.0/mda.xsd http://standards.iso.org/iso/19115/-3/mdb/1.0 http://standards.iso.org/iso/19115/-3/mdb/1.0/mdb.xsd http://standards.iso.org/iso/19115/-3/mds/1.0 http://standards.iso.org/iso/19115/-3/mds/1.0/mds.xsd http://standards.iso.org/iso/19115/-3/mdt/1.0 http://standards.iso.org/iso/19115/-3/mdt/1.0/mdt.xsd http://standards.iso.org/iso/19115/-3/mex/1.0 http://standards.iso.org/iso/19115/-3/mex/1.0/mex.xsd http://standards.iso.org/iso/19115/-3/mmi/1.0 http://standards.iso.org/iso/19115/-3/mmi/1.0/mmi.xsd http://standards.iso.org/iso/19115/-3/mpc/1.0 http://standards.iso.org/iso/19115/-3/mpc/1.0/mpc.xsd http://standards.iso.org/iso/19115/-3/mrc/1.0 http://standards.iso.org/iso/19115/-3/mrc/1.0/mrc.xsd http://standards.iso.org/iso/19115/-3/mrd/1.0 http://standards.iso.org/iso/19115/-3/mrd/1.0/mrd.xsd http://standards.iso.org/iso/19115/-3/mri/1.0 http://standards.iso.org/iso/19115/-3/mri/1.0/mri.xsd http://standards.iso.org/iso/19115/-3/mrl/1.0 http://standards.iso.org/iso/19115/-3/mrl/1.0/mrl.xsd http://standards.iso.org/iso/19115/-3/mrs/1.0 http://standards.iso.org/iso/19115/-3/mrs/1.0/mrs.xsd http://standards.iso.org/iso/19115/-3/msr/1.0 http://standards.iso.org/iso/19115/-3/msr/1.0/msr.xsd http://standards.iso.org/iso/19157/-2/mdq/1.0 http://standards.iso.org/iso/19157/-2/mdq/1.0/mdq.xsd http://standards.iso.org/iso/19115/-3/mac/1.0 http://standards.iso.org/iso/19115/-3/mac/1.0/mac.xsd http://standards.iso.org/iso/19115/-3/gco/1.0 http://standards.iso.org/iso/19115/-3/gco/1.0/gco.xsd http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/gml.xsd http://www.w3.org/1999/xlink http://www.w3.org/1999/xlink.xsd"
	exclude-result-prefixes="saxon util">

	<xsl:output method="xml" version="1.0" encoding="UTF-8"
		indent="yes" />
	<xsl:strip-space elements="*" />

	<!-- Node collection, adds schema location information as well -->
	<xsl:template match="response">
		<mdb:MD_Metadata>
			<xsl:copy-of select="document('')/*/@xsi:schemaLocation" />
			<xsl:apply-templates select="item" />
		</mdb:MD_Metadata>
	</xsl:template>

	<!-- Individual node -->
	<xsl:template match="item">

		<!-- Identifier -->
		<mdb:metadataIdentifier>
			<mcc:MD_Identifier>
				<mcc:authority>
					<cit:CI_Citation>
						<cit:title>
							<gco:CharacterString>GeoNetwork UUID</gco:CharacterString>
						</cit:title>
					</cit:CI_Citation>
				</mcc:authority>
				<mcc:code>
					<gco:CharacterString>To be inserted</gco:CharacterString>
				</mcc:code>
				<mcc:codeSpace>
					<gco:CharacterString>urn:uuid</gco:CharacterString>
				</mcc:codeSpace>
			</mcc:MD_Identifier>
		</mdb:metadataIdentifier>

		<!-- Scope -->
		<mdb:metadataScope>
			<mdb:MD_MetadataScope>
				<mdb:resourceScope>
					<mcc:MD_ScopeCode codeList="codeListLocation#MD_ScopeCode"
						codeListValue="dataset" />
				</mdb:resourceScope>
			</mdb:MD_MetadataScope>
		</mdb:metadataScope>

		<!-- Metadata contact -->
		<mdb:contact>
			<!-- <xsl:apply-templates select="Principal-contact" /> -->
			<xsl:apply-templates select="field_principal_contact" />
		</mdb:contact>

		<!-- Metadata date information -->
		<mdb:dateInfo>
			<cit:CI_Date>
				<cit:date>
					<gco:DateTime>
						<xsl:value-of
							select="format-dateTime(current-dateTime(), '[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01]')" />
					</gco:DateTime>
				</cit:date>
				<cit:dateType>
					<cit:CI_DateTypeCode codeList="codeListLocation#CI_DateTypeCode"
						codeListValue="revision" />
				</cit:dateType>
			</cit:CI_Date>
		</mdb:dateInfo>
		<mdb:dateInfo>
			<cit:CI_Date>
				<cit:date>
					<gco:DateTime>
						<xsl:value-of
							select="format-dateTime(current-dateTime(), '[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01]')" />
					</gco:DateTime>
				</cit:date>
				<cit:dateType>
					<cit:CI_DateTypeCode codeList="codeListLocation#CI_DateTypeCode"
						codeListValue="creation" />
				</cit:dateType>
			</cit:CI_Date>
		</mdb:dateInfo>

		<!-- Metadata standard -->
		<mdb:metadataStandard>
			<cit:CI_Citation>
				<cit:title>
					<gco:CharacterString>
						ANZLIC Metadata Profile: An Australian/New
						Zealand Profile of AS/NZS
						ISO 19115:2005, Geographic information -
						Metadata
					</gco:CharacterString>
				</cit:title>
				<cit:edition>
					<gco:CharacterString>1.1</gco:CharacterString>
				</cit:edition>
			</cit:CI_Citation>
		</mdb:metadataStandard>

		<!-- Metadata profile -->
		<mdb:metadataProfile>
			<cit:CI_Citation>
				<cit:title>
					<gco:CharacterString>Geoscience Australia Community Metadata
						Profile of ISO 19115-1:2014</gco:CharacterString>
				</cit:title>
				<cit:edition>
					<gco:CharacterString>Version 2.0, April 2015</gco:CharacterString>
				</cit:edition>
			</cit:CI_Citation>
		</mdb:metadataProfile>
		<mdb:alternativeMetadataReference>
			<cit:CI_Citation>
				<cit:title>
					<gco:CharacterString>
						Geoscience Australia - short identifier for
						metadata record with uuid ...</gco:CharacterString>
				</cit:title>
				<cit:identifier>
					<mcc:MD_Identifier>
						<mcc:code gco:nilReason="missing">
							<gco:CharacterString />
						</mcc:code>
						<mcc:codeSpace>
							<gco:CharacterString>http://www.ga.gov.au/eCatId
							</gco:CharacterString>
						</mcc:codeSpace>
					</mcc:MD_Identifier>
				</cit:identifier>
			</cit:CI_Citation>
		</mdb:alternativeMetadataReference>

		<!-- Online link to metadata -->
		<mdb:metadataLinkage>
			<cit:CI_OnlineResource>
				<cit:linkage>
					<gco:CharacterString>To be added</gco:CharacterString>
				</cit:linkage>
				<cit:description>
					<gco:CharacterString>Point-of-truth metadata URL</gco:CharacterString>
				</cit:description>
				<cit:function>
					<cit:CI_OnLineFunctionCode codeList="codeListLocation#CI_OnLineFunctionCode"
						codeListValue="completeMetadata" />
				</cit:function>
			</cit:CI_OnlineResource>
		</mdb:metadataLinkage>

		<!-- Coordinate reference system -->
		<xsl:apply-templates select="CRS" />

		<!-- Identifier information -->
		<mdb:identificationInfo>
			<mri:MD_DataIdentification>
				<mri:citation>
					<cit:CI_Citation>
						<cit:title>
							<gco:CharacterString>
								<xsl:value-of select="field_alternate_title/value" />
							</gco:CharacterString>
						</cit:title>
						<cit:date>
							<cit:CI_Date>
								<xsl:variable name="pub" select="field_publishing_time_frame/value" />
								<cit:date>
									<gco:DateTime>
										<xsl:value-of
											select="concat(substring($pub,1,10),'T',substring($pub,12,8))" />
									</gco:DateTime>
								</cit:date>
								<cit:dateType>
									<cit:CI_DateTypeCode codeList="codeListLocation#CI_DateTypeCode"
										codeListValue="publication" />
								</cit:dateType>
							</cit:CI_Date>
						</cit:date>
						<cit:edition>
							<gco:CharacterString>1</gco:CharacterString>
						</cit:edition>
						<cit:identifier>
							<mcc:MD_Identifier>
								<mcc:code gco:nilReason="missing">
									<gco:CharacterString />
								</mcc:code>
							</mcc:MD_Identifier>
						</cit:identifier>
						<cit:identifier>
							<mcc:MD_Identifier>
								<mcc:code>
									<gco:CharacterString>Product</gco:CharacterString>
								</mcc:code>
							</mcc:MD_Identifier>
						</cit:identifier>
						<cit:identifier>
							<mcc:MD_Identifier>
								<mcc:code>
									<gco:CharacterString>Link to be added by administrator</gco:CharacterString>
								</mcc:code>
								<mcc:codeSpace>
									<gco:CharacterString>ga-dataSetURI</gco:CharacterString>
								</mcc:codeSpace>
							</mcc:MD_Identifier>
						</cit:identifier>
						<xsl:apply-templates select="field_authors" />
						<cit:citedResponsibleParty>
							<xsl:apply-templates select="	field_contact" />
						</cit:citedResponsibleParty>
					</cit:CI_Citation>
				</mri:citation>

				<xsl:apply-templates select="field_overview/value" />

				<!-- Contacts -->
				<mri:pointOfContact>
					<xsl:apply-templates select="field_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_custodian" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_data_source_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_feedback_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_ingestion_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_maintenance_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_media_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_metadata_contact" />
				</mri:pointOfContact>
				<mri:pointOfContact>
					<xsl:apply-templates select="field_qa_contact" />
				</mri:pointOfContact>

				<!-- Spatial resolution -->
				<mri:spatialResolution>
					<mri:MD_Resolution>
						<mri:equivalentScale>
							<mri:MD_RepresentativeFraction>
								<mri:denominator />
							</mri:MD_RepresentativeFraction>
						</mri:equivalentScale>
					</mri:MD_Resolution>
				</mri:spatialResolution>

				<!-- Topic -->
				<mri:topicCategory>
					<mri:MD_TopicCategoryCode>geoscientificInformation</mri:MD_TopicCategoryCode>
				</mri:topicCategory>

				<!-- Spatial bounds -->
				<mri:extent>
					<gex:EX_Extent>
						<gex:description>
							<gco:CharacterString>unknown</gco:CharacterString>
						</gex:description>
						<gex:geographicElement>
							<gex:EX_GeographicBoundingBox>
								<gex:westBoundLongitude>
									<gco:Decimal>
										<xsl:value-of select="field_schema/field_minimum_x_value" />
									</gco:Decimal>
								</gex:westBoundLongitude>
								<gex:eastBoundLongitude>
									<gco:Decimal>
										<xsl:value-of select="field_schema/field_maximum_x_value" />
									</gco:Decimal>
								</gex:eastBoundLongitude>
								<gex:southBoundLatitude>
									<gco:Decimal>
										<xsl:value-of select="field_schema/field_minimum_y_value" />
									</gco:Decimal>
								</gex:southBoundLatitude>
								<gex:northBoundLatitude>
									<gco:Decimal>
										<xsl:value-of select="field_schema/field_maximum_y_value" />
									</gco:Decimal>
								</gex:northBoundLatitude>
							</gex:EX_GeographicBoundingBox>
						</gex:geographicElement>
						<gex:temporalElement>
							<gex:EX_TemporalExtent>
								<gex:extent>
									<gml:TimePeriod>
										<gml:beginPosition>
											<xsl:value-of
												select="format-dateTime(current-dateTime(), '[Y0001]-[M01]-[D01]')" />
										</gml:beginPosition>
										<gml:endPosition />
									</gml:TimePeriod>
								</gex:extent>
							</gex:EX_TemporalExtent>
						</gex:temporalElement>
					</gex:EX_Extent>
				</mri:extent>

				<!-- Maintenance schedule -->
				<mri:resourceMaintenance>
					<mmi:MD_MaintenanceInformation>
						<mmi:maintenanceAndUpdateFrequency>
							<mmi:MD_MaintenanceFrequencyCode
								codeList="codeListLocation#MD_MaintenanceFrequencyCode"
								codeListValue="asNeeded" />
						</mmi:maintenanceAndUpdateFrequency>
					</mmi:MD_MaintenanceInformation>
				</mri:resourceMaintenance>

				<!-- Distribution details -->
				<mri:resourceFormat>
					<mrd:MD_Format>
						<mrd:formatSpecificationCitation>
							<cit:CI_Citation>
								<cit:title>
									<gco:CharacterString>misc</gco:CharacterString>
								</cit:title>
								<cit:date>
									<cit:CI_Date>
										<cit:date gco:nilReason="missing" />
										<cit:dateType gco:nilReason="missing" />
									</cit:CI_Date>
								</cit:date>
								<cit:edition>
									<gco:CharacterString>1</gco:CharacterString>
								</cit:edition>
							</cit:CI_Citation>
						</mrd:formatSpecificationCitation>
						<mrd:formatDistributor>
							<mrd:MD_Distributor>
								<mrd:distributorContact>
									<xsl:apply-templates select="field_distribution_entity" />
								</mrd:distributorContact>
							</mrd:MD_Distributor>
						</mrd:formatDistributor>
					</mrd:MD_Format>
				</mri:resourceFormat>

				<xsl:apply-templates select="Keyword-pairs" />

				<!-- Access constraints -->
				<mri:resourceConstraints>
					<mco:MD_LegalConstraints>
						<mco:accessConstraints>
							<mco:MD_RestrictionCode codeList="codeListLocation#MD_RestrictionCode"
								codeListValue="license" />
						</mco:accessConstraints>

						<!-- Use constraints -->
						<mco:useConstraints>
							<mco:MD_RestrictionCode codeList="codeListLocation#MD_RestrictionCode"
								codeListValue="license" />
						</mco:useConstraints>

						<xsl:choose>
							<xsl:when test="not(string(field_license/name/value))">
								<mco:otherConstraints gco:nilReason="missing">
									<gco:CharacterString />
								</mco:otherConstraints>
							</xsl:when>
							<xsl:otherwise>
								<mco:otherConstraints>
									<gco:CharacterString>
                                <xsl:value-of select="field_license/name/value" />
                            </gco:CharacterString>
								</mco:otherConstraints>
							</xsl:otherwise>
						</xsl:choose>

					</mco:MD_LegalConstraints>
				</mri:resourceConstraints>

				<!-- Security constraints -->
				<mri:resourceConstraints>
					<mco:MD_SecurityConstraints>
						<mco:classification>
							<xsl:variable name="stype"
								select="string(field_security_classification/name/value)" />
							<mco:MD_ClassificationCode
								codeList="codeListLocation#MD_ClassificationCode" codeListValue="{$stype}" />
						</mco:classification>
					</mco:MD_SecurityConstraints>
				</mri:resourceConstraints>

				<!-- Locale information -->
				<mri:defaultLocale>
					<lan:PT_Locale id="ENG">
						<lan:language>
							<lan:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/"
								codeListValue="eng" />
						</lan:language>
						<lan:characterEncoding>
							<lan:MD_CharacterSetCode codeList="codeListLocation#MD_CharacterSetCode"
								codeListValue="utf8" />
						</lan:characterEncoding>
					</lan:PT_Locale>
				</mri:defaultLocale>
			</mri:MD_DataIdentification>
		</mdb:identificationInfo>

		<!-- Distribution format -->
		<mdb:distributionInfo>
			<mrd:MD_Distribution>
				<mrd:distributionFormat>
					<mrd:MD_Format>
						<mrd:formatSpecificationCitation>
							<cit:CI_Citation>
								<cit:title>
									<gco:CharacterString>
										<xsl:value-of select="Data-format" />
									</gco:CharacterString>
								</cit:title>
								<cit:alternateTitle />
								<cit:date>
									<cit:CI_Date>
										<cit:date gco:nilReason="missing" />
										<cit:dateType gco:nilReason="missing" />
									</cit:CI_Date>
								</cit:date>
								<cit:edition>
									<gco:CharacterString>Unknown</gco:CharacterString>
								</cit:edition>
								<cit:identifier>
									<mcc:MD_Identifier>
										<mcc:code>
											<gco:CharacterString>
												<xsl:value-of select="Data-format" />
											</gco:CharacterString>
										</mcc:code>
									</mcc:MD_Identifier>
								</cit:identifier>
							</cit:CI_Citation>
						</mrd:formatSpecificationCitation>
						<mrd:formatDistributor>
							<mrd:MD_Distributor>
								<mrd:distributorContact>

									<!-- Take a closer look - this is probably the distributor of the 
										format -->

									<xsl:apply-templates select="field_distribution_entity" />

								</mrd:distributorContact>
							</mrd:MD_Distributor>
						</mrd:formatDistributor>
					</mrd:MD_Format>
				</mrd:distributionFormat>
			</mrd:MD_Distribution>
		</mdb:distributionInfo>

		<!-- Lineage details -->
		<mdb:resourceLineage>
			<mrl:LI_Lineage>
				<mrl:statement>
					<gco:CharacterString>
						<xsl:value-of select="field_background" />
					</gco:CharacterString>
				</mrl:statement>
				<mrl:scope>
					<mcc:MD_Scope>
						<!-- <xsl:variable name="dtype" select="Resource-type/a/text()" /> 
							<mcc:level> <mcc:MD_ScopeCode codeList="codeListLocation#MD_ScopeCode" codeListValue="{$dtype}" 
							/> -->
						<mcc:level>
							<mcc:MD_ScopeCode codeList="codeListLocation#MD_ScopeCode"
								codeListValue="dataset" />
						</mcc:level>
					</mcc:MD_Scope>
				</mrl:scope>
				<mrl:source>
					<mrl:LI_Source>
						<mrl:description>
							<gco:CharacterString>Please refer to the lineage section.</gco:CharacterString>
						</mrl:description>
					</mrl:LI_Source>
				</mrl:source>
			</mrl:LI_Lineage>
		</mdb:resourceLineage>
		<mdb:metadataConstraints>
			<mco:MD_SecurityConstraints>
				<xsl:variable name="stype" select="field_security_classification/name/value" />
				<mco:classification>
					<mco:MD_ClassificationCode codeList="codeListLocation#MD_ClassificationCode"
						codeListValue="{$stype}" />
				</mco:classification>
			</mco:MD_SecurityConstraints>
		</mdb:metadataConstraints>
	</xsl:template>

	<!-- Abstract parsing -->
	<xsl:template match="field_overview/value">
		<mri:abstract>
			<xsl:variable name="abs" select="." />
			<gco:CharacterString>
				<xsl:value-of select="util:strip-tags($abs)"
				disable-output-escaping="yes" />
			</gco:CharacterString>
		</mri:abstract>
	</xsl:template>

	<!-- Owner parsing -->
	<xsl:template match="field_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="owner" />
			</cit:role>
			<cit:party>
				<cit:CI_Organisation>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="organisation" />
				</cit:CI_Organisation>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<!-- Custodian parsing -->
	<xsl:template match="field_custodian">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="custodian" />
			</cit:role>
			<cit:party>
				<cit:CI_Organisation>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="organisation" />
				</cit:CI_Organisation>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<!-- Distribution parsing -->
	<xsl:template match="field_distribution_entity">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="distributor" />
			</cit:role>
			<cit:party>
				<cit:CI_Organisation>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="organisation"/>
				</cit:CI_Organisation>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_principal_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>  
			<cit:party>
				<cit:CI_Organisation>
			<!--		<xsl:apply-templates select=".//div[@class='content clearfix']" mode="organisation" /> -->
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="organisation" />
				</cit:CI_Organisation>
			</cit:party> 
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="Primary-contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Organisation>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="organisation" />
				<!--	<xsl:apply-templates select=".//div[@class='content clearfix']" mode="organisation" /> -->
				</cit:CI_Organisation>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<!-- -->
	
	<xsl:template match=".[type/target_id = 'contact']" mode="individual" >

		<xsl:variable name="name"
			select="field_contact_name/value" />
		<xsl:variable name="role"
			select="field_role" />

		<xsl:choose>
			<xsl:when test="not(string($name))">
				<cit:name>
					<gco:CharacterString>
					  <xsl:value-of select="title/value" />
					</gco:CharacterString>
				</cit:name>
			</xsl:when>
			<xsl:otherwise>
				<cit:name>
					<gco:CharacterString>
                                <xsl:value-of select="$name" />
                            </gco:CharacterString>
				</cit:name>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:apply-templates select="field_organization" />
		<xsl:choose>
			<xsl:when test="not(string($role))">
				<cit:positionName gco:nilReason="missing">
					<gco:CharacterString />
				</cit:positionName>
			</xsl:when>
			<xsl:otherwise>
				<cit:positionName>
					<gco:CharacterString>
            <xsl:value-of select="$role" />      
              </gco:CharacterString>
				</cit:positionName>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match=".[type/target_id = 'contact']" mode="organisation" >
<!--    	    <xsl:variable name="name"
			select="field_contact_name/value" />
		<xsl:variable name="role"
			select="field_role" />
-->		<xsl:choose>
			<xsl:when test="not(string(field_contact_name/value))">
				<cit:name>
					<gco:CharacterString>
					  <xsl:value-of select="title/value" />
					</gco:CharacterString>
				</cit:name>
			</xsl:when>
			<xsl:otherwise>
				<cit:name>
					<gco:CharacterString>
                                <xsl:value-of select="field_contact_name/value" />
                            </gco:CharacterString>
				</cit:name>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:apply-templates select="field_organization" />
		<xsl:if test="string(field_role)">
			<cit:individual>
				<cit:CI_Individual>
					<cit:positionName>
						<gco:CharacterString><xsl:value-of select="field_role" /></gco:CharacterString>
					</cit:positionName>
				</cit:CI_Individual>
			</cit:individual>
		</xsl:if>
	</xsl:template>
  
  <xsl:template match="field_organization">
	
		<cit:contactInfo>
			<cit:CI_Contact>
				<cit:phone>
					<cit:CI_Telephone>
						<xsl:choose>
							<xsl:when test="not(string(field_telephone))">
								<cit:number gco:nilReason="missing">
									<gco:CharacterString />
								</cit:number>
							</xsl:when>
							<xsl:otherwise>
								<cit:number>
									<gco:CharacterString>
                                <xsl:value-of
										select="field_telephone" />
                            </gco:CharacterString>
								</cit:number>
							</xsl:otherwise>
						</xsl:choose>
						<cit:numberType>
							<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode"
								codeListValue="voice" />
						</cit:numberType>
					</cit:CI_Telephone>
				</cit:phone>
				<cit:address>
					<cit:CI_Address>
						<xsl:choose>
							<xsl:when test="not(string(field_address/streetAddress))">
								<cit:deliveryPoint gco:nilReason="missing">
									<gco:CharacterString />
								</cit:deliveryPoint>
							</xsl:when>
							<xsl:otherwise>
								<cit:deliveryPoint>
									<gco:CharacterString>
                                <xsl:value-of
										select="field_address/streetAddress" />
                            </gco:CharacterString>
								</cit:deliveryPoint>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when
								test="not(string(field_address/addressLocality))">
								<cit:city gco:nilReason="missing">
									<gco:CharacterString />
								</cit:city>
							</xsl:when>
							<xsl:otherwise>
								<cit:city>
									<gco:CharacterString>
                                <xsl:value-of
										select="normalize-space(field_address/addressLocality)" />
                            </gco:CharacterString>
								</cit:city>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when
								test="not(string(field_address/addressRegion ))">
								<cit:administrativeArea gco:nilReason="missing">
									<gco:CharacterString />
								</cit:administrativeArea>
							</xsl:when>
							<xsl:otherwise>
								<cit:administrativeArea>
									<gco:CharacterString>
                                <xsl:value-of
										select="normalize-space(field_address/addressRegion)" />
                            </gco:CharacterString>
								</cit:administrativeArea>
							</xsl:otherwise>
						</xsl:choose>
						<cit:postalCode>
							<gco:CharacterString>
								<xsl:value-of select="field_address/postalCode" />
							</gco:CharacterString>
						</cit:postalCode>
						<cit:country>
							<gco:CharacterString>
								<xsl:value-of select="field_address/addressCountry" />
							</gco:CharacterString>
						</cit:country>
						<xsl:choose>
							<xsl:when
								test=" not(field_email) or not(string(field_email = ''))">
								<cit:electronicMailAddress
									gco:nilReason="missing">
									<gco:CharacterString />
								</cit:electronicMailAddress>
							</xsl:when>
							<xsl:otherwise>
								<cit:electronicMailAddress>
									<gco:CharacterString>
                                <xsl:value-of
										select="field_email" />
                            </gco:CharacterString>
								</cit:electronicMailAddress>
							</xsl:otherwise>
						</xsl:choose>
					</cit:CI_Address>
				</cit:address>
			</cit:CI_Contact>
		</cit:contactInfo>
	</xsl:template>

	<xsl:template match="(.)//div[@class='content clearfix']" mode="individual" >

		<xsl:variable name="name"
			select=".//div[contains(@class,'contact name')]/div[@class='field-items']" />
		<xsl:variable name="role"
			select=".//div[contains(@class,'role')]/div[@class='field-items']" />

		<xsl:choose>
			<xsl:when test="not(string($name))">
				<cit:name gco:nilReason="missing">
					<gco:CharacterString />
				</cit:name>
			</xsl:when>
			<xsl:otherwise>
				<cit:name>
					<gco:CharacterString>
                                <xsl:value-of select="$name" />
                            </gco:CharacterString>
				</cit:name>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:apply-templates select=".//div[@class='location vcard']" />
		<xsl:choose>
			<xsl:when test="not(string($role))">
				<cit:positionName gco:nilReason="missing">
					<gco:CharacterString />
				</cit:positionName>
			</xsl:when>
			<xsl:otherwise>
				<cit:positionName>
					<gco:CharacterString>
                                <xsl:value-of select="$role" />
                            </gco:CharacterString>
				</cit:positionName>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="(.)//div[@class='content clearfix']"
		mode="organisation">
		<xsl:variable name="name"
			select=".//div[@class='location vcard']//span[@itemprop='name']" />
		<xsl:variable name="role"
			select="div[contains(@class,'role')]/div[@class='field-items']/div" />
		<xsl:choose>
			<xsl:when test="not(string($name))">
				<cit:name gco:nilReason="missing">
					<gco:CharacterString />
				</cit:name>
			</xsl:when>
			<xsl:otherwise>
				<cit:name>
					<gco:CharacterString>
                                <xsl:value-of select="$name" />
                            </gco:CharacterString>
				</cit:name>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:apply-templates select=".//div[@class='location vcard']" />
		<xsl:if test="string($role)">
			<cit:individual>
				<cit:CI_Individual>
					<cit:positionName>
						<gco:CharacterString><xsl:value-of select="$role" /></gco:CharacterString>
					</cit:positionName>
				</cit:CI_Individual>
			</cit:individual>
		</xsl:if>
	</xsl:template>

	<!-- -->

	<xsl:template match="field_data_source_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_feedback_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_ingestion_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_maintenance_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_media_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_metadata_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="field_qa_contact">
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
					codeListValue="pointOfContact" />
			</cit:role>
			<cit:party>
				<cit:CI_Individual>
					<xsl:apply-templates select=".[type/target_id = 'contact']" mode="individual" />
				</cit:CI_Individual>
			</cit:party>
		</cit:CI_Responsibility>
	</xsl:template>

	<xsl:template match="CRS">
		<mdb:referenceSystemInfo>
			<mrs:MD_ReferenceSystem>
				<mrs:referenceSystemIdentifier>
					<mcc:MD_Identifier>
						<mcc:authority>
							<cit:CI_Citation>
								<cit:title>
									<gco:CharacterString>European Petroleum Survey Group (EPSG)
                                    Geodetic Parameter Registry</gco:CharacterString>
								</cit:title>
								<cit:date>
									<cit:CI_Date>
										<cit:date>
											<gco:DateTime>2008-11-12T00:00:00</gco:DateTime>
										</cit:date>
										<cit:dateType>
											<cit:CI_DateTypeCode codeList="codeListLocation#CI_DateTypeCode"
												codeListValue="publication" />
										</cit:dateType>
									</cit:CI_Date>
								</cit:date>
								<cit:citedResponsibleParty>
									<cit:CI_Responsibility>
										<cit:role gco:nilReason="missing" />
										<cit:party>
											<cit:CI_Organisation>
												<cit:name>
													<gco:CharacterString>European Petroleum Survey Group</gco:CharacterString>
												</cit:name>
												<cit:contactInfo>
													<cit:CI_Contact>
														<cit:onlineResource>
															<cit:CI_OnlineResource>
																<cit:linkage>
																	<gco:CharacterString>http://www.epsg-registry.org/</gco:CharacterString>
																</cit:linkage>
															</cit:CI_OnlineResource>
														</cit:onlineResource>
													</cit:CI_Contact>
												</cit:contactInfo>
											</cit:CI_Organisation>
										</cit:party>
									</cit:CI_Responsibility>
								</cit:citedResponsibleParty>
							</cit:CI_Citation>
						</mcc:authority>
						<mcc:code>
							<gco:CharacterString><xsl:value-of select="." /></gco:CharacterString>
						</mcc:code>
						<mcc:codeSpace>
							<gco:CharacterString>EPSG</gco:CharacterString>
						</mcc:codeSpace>
						<mcc:version>
							<gco:CharacterString>8.9</gco:CharacterString>
						</mcc:version>
					</mcc:MD_Identifier>
				</mrs:referenceSystemIdentifier>
			</mrs:MD_ReferenceSystem>
		</mdb:referenceSystemInfo>
	</xsl:template>

	<xsl:template match="Keyword-pairs/div/ol/li">
		<mri:descriptiveKeywords>
			<mri:MD_Keywords>
				<mri:keyword>
					<gco:CharacterString><xsl:value-of select="div/table/tbody/tr/td/div/div" /></gco:CharacterString>
					<!-- <gco:CharacterString><xsl:value-of select="//div[@class='field-items']" 
						/></gco:CharacterString> -->
				</mri:keyword>
				<xsl:variable name="vocab" select="div/table/tbody/tr/td/div/ul/li" />
				<!-- <xsl:variable name="vocab" select="//li[@class='taxonomy-term-reference-0']" 
					/> -->
				<mri:type>
					<mri:MD_KeywordTypeCode codeList="codeListLocation#MD_KeywordTypeCode"
						codeListValue="{$vocab}" />
				</mri:type>
			</mri:MD_Keywords>
		</mri:descriptiveKeywords>
	</xsl:template>

	<!-- Parsing vCard information -->
	<xsl:template match="(.)//div[@class='location vcard']">
	
		<cit:contactInfo>
			<cit:CI_Contact>
				<cit:phone>
					<cit:CI_Telephone>
						<xsl:choose>
							<xsl:when test="not(string(.//span[@itemprop='telephone']))">
								<cit:number gco:nilReason="missing">
									<gco:CharacterString />
								</cit:number>
							</xsl:when>
							<xsl:otherwise>
								<cit:number>
									<gco:CharacterString>
                                <xsl:value-of
										select=".//span[@itemprop='telephone']" />
                            </gco:CharacterString>
								</cit:number>
							</xsl:otherwise>
						</xsl:choose>
						<cit:numberType>
							<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode"
								codeListValue="voice" />
						</cit:numberType>
					</cit:CI_Telephone>
				</cit:phone>
				<cit:phone>
					<cit:CI_Telephone>
						<xsl:choose>
							<xsl:when test="not(string(.//span[@itemprop='faxNumber']))">
								<cit:number gco:nilReason="missing">
									<gco:CharacterString />
								</cit:number>
							</xsl:when>
							<xsl:otherwise>
								<cit:number>
									<gco:CharacterString>
                                <xsl:value-of
										select=".//span[@itemprop='faxNumber']" />
                            </gco:CharacterString>
								</cit:number>
							</xsl:otherwise>
						</xsl:choose>
						<cit:numberType>
							<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode"
								codeListValue="facsimile" />
						</cit:numberType>
					</cit:CI_Telephone>
				</cit:phone>
				<cit:address>
					<cit:CI_Address>
						<xsl:choose>
							<xsl:when test="not(string(.//span[@itemprop='streetAddress']))">
								<cit:deliveryPoint gco:nilReason="missing">
									<gco:CharacterString />
								</cit:deliveryPoint>
							</xsl:when>
							<xsl:otherwise>
								<cit:deliveryPoint>
									<gco:CharacterString>
                                <xsl:value-of
										select=".//span[@itemprop='streetAddress']" />
                            </gco:CharacterString>
								</cit:deliveryPoint>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when
								test="not(.//span[@itemprop='addressLocality']) or not(string(div/span[@itemprop='addressLocality']))">
								<cit:city gco:nilReason="missing">
									<gco:CharacterString />
								</cit:city>
							</xsl:when>
							<xsl:otherwise>
								<cit:city>
									<gco:CharacterString>
                                <xsl:value-of
										select="normalize-space(.//span[@itemprop='addressLocality'])" />
                            </gco:CharacterString>
								</cit:city>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when
								test="not(.//span[@itemprop='addressRegion']) or not(string(div/span[@itemprop='addressRegion'] = ''))">
								<cit:administrativeArea gco:nilReason="missing">
									<gco:CharacterString />
								</cit:administrativeArea>
							</xsl:when>
							<xsl:otherwise>
								<cit:administrativeArea>
									<gco:CharacterString>
                                <xsl:value-of
										select="normalize-space(.//span[@itemprop='addressRegion'])" />
                            </gco:CharacterString>
								</cit:administrativeArea>
							</xsl:otherwise>
						</xsl:choose>
						<cit:postalCode>
							<gco:CharacterString>
								<xsl:value-of select=".//span[@itemprop='postalCode']" />
							</gco:CharacterString>
						</cit:postalCode>
						<cit:country>
							<gco:CharacterString>
								<xsl:value-of select=".//div[@itemprop='addressCountry']" />
							</gco:CharacterString>
						</cit:country>
						<xsl:choose>
							<xsl:when
								test=" not(.//div[@class='email']/span) or not(string(.//div[@class='email']/span = ''))">
								<cit:electronicMailAddress
									gco:nilReason="missing">
									<gco:CharacterString />
								</cit:electronicMailAddress>
							</xsl:when>
							<xsl:otherwise>
								<cit:electronicMailAddress>
									<gco:CharacterString>
                                <xsl:value-of
										select=".//div[@class='email']/span" />
                            </gco:CharacterString>
								</cit:electronicMailAddress>
							</xsl:otherwise>
						</xsl:choose>
					</cit:CI_Address>
				</cit:address>
			</cit:CI_Contact>
		</cit:contactInfo>
	</xsl:template>

	<xsl:template match="field_authors">
		<cit:citedResponsibleParty>
			<cit:CI_Responsibility>
				<cit:role>
					<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode"
						codeListValue="author">author</cit:CI_RoleCode>
				</cit:role>
				<cit:party>
					<cit:CI_Individual>
						<cit:name>
							<gco:CharacterString>
								<xsl:value-of select="." />
							</gco:CharacterString>
						</cit:name>
						<cit:contactInfo>
							<cit:CI_Contact>
								<cit:contactInstructions>
									<gco:CharacterString />
								</cit:contactInstructions>
							</cit:CI_Contact>
						</cit:contactInfo>
					</cit:CI_Individual>
				</cit:party>
			</cit:CI_Responsibility>
		</cit:citedResponsibleParty>
	</xsl:template>

	<xsl:function name="util:strip-tags">
		<xsl:param name="text" />
		<xsl:choose>
			<xsl:when test="contains($text, '&lt;')">
				<xsl:value-of
					select="concat(substring-before($text, '&lt;'),
        util:strip-tags(substring-after($text, '&gt;')))" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:function>

	<!-- <xsl:template match="NCI-FoR-codes"> <xsl:value-of select="translate(., 
		translate(., '0123456789', ''), '')" /> </xsl:template> <xsl:template match="License"> 
		<license> <xsl:apply-templates select="a" /> </license> </xsl:template> <xsl:template 
		match="Owner"> <originatingSource> <xsl:value-of select="span[@itemprop='name']" 
		/> </originatingSource> </xsl:template> -->

</xsl:stylesheet>
