-- ==============================================================================================
-- ==============================================================================================
-- Project: 20230925 Database Summary
-- Last Updated: 09/25/2023

-- get site + ws info
SELECT DISTINCT
A.SiteUUID,
A.Latitude,
A.Longitude,
A.PODorPOUSite,
CC.WaDEName as WaterSourceTypeCV
From Core.Sites_dim A
LEFT JOIN Core.WaterSourceBridge_Sites_fact B on B.SiteID = A.SiteID
Left JOIN Core.WaterSources_dim C on C.WaterSourceID = B.WaterSourceID
LEFT JOIN CVs.WaterSourceType CC ON CC.Name = C.WaterSourceTypeCV
WHERE A.SiteUUID LIKE '%wr_S%'
ORDER BY A.SiteUUID;


-- get water right record info
SELECT DISTINCT
C.State,
A.AllocationUUID,
A.PrimaryBeneficialUseCategory,
A.ExemptOfVolumeFlowPriority,
Hc.Date as AllocationPriorityDate,
A.AllocationLegalStatusCV,
A.AllocationFlow_CFS,
A.AllocationVolume_AF
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.Organizations_dim C on C.OrganizationID = A.OrganizationID
LEFT JOIN Core.Date_dim Hc on Hc.DateID = A.AllocationPriorityDateID
ORDER BY A.AllocationUUID;


-- get org info
	(SELECT DISTINCT
	'Water Allocation Record' as WaDEDataType,
	B.State,
	B.OrganizationName,
	B.OrganizationWebsite
	FROM Core.AllocationAmounts_fact A
	LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID)
UNION
	(SELECT DISTINCT
	'Site Specific Timeseries' as WaDEDataType,
	B.State,
	B.OrganizationName,
	B.OrganizationWebsite
	FROM Core.SiteVariableAmounts_fact A
	LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID)
UNION
	(SELECT DISTINCT
	'Regulatory Area' as WaDEDataType,
	B.State,
	B.OrganizationName,
	B.OrganizationWebsite
	FROM Core.RegulatoryReportingUnits_fact A
	LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID)
UNION
	(SELECT DISTINCT
	'Aggregated Amount Timeseries' as WaDEDataType,
	B.State,
	B.OrganizationName,
	B.OrganizationWebsite
	FROM Core.AggregatedAmounts_fact A
	LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID)
ORDER BY WaDEDataType, B.State, B.OrganizationName;
