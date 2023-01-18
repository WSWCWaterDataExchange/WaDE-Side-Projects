-- ==============================================================================================
-- ==============================================================================================
-- Project: 20230118 Summary of SSRO
-- Date: 01/18/2023


-- Count # of POD/POU sites per state
SELECT DISTINCT
C.State,
B.PODorPOUSite,
Count(DISTINCT B.SiteUUID) as CountSite
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
WHERE B.SiteUUID LIKE '%ssro_S%'
GROUP BY C.State, B.PODorPOUSite
ORDER BY C.State, CountSite desc;


-- Count # of VariableCV sites per state
SELECT DISTINCT
C.State,
D.VariableCV,
COUNT(DISTINCT B.SiteUUID) as CountSite
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
LEFT JOIN Core.Variables_dim D on D.VariableSpecificID = A.VariableSpecificID
WHERE B.SiteUUID LIKE '%ssro_S%'
GROUP BY C.State, D.VariableCV
ORDER BY C.State, D.VariableCV, CountSite desc;


-- Count # of VariableSpecificCV sites per state
SELECT DISTINCT
C.State,
D.VariableSpecificCV,
COUNT(DISTINCT B.SiteUUID) as CountSite
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
LEFT JOIN Core.Variables_dim D on D.VariableSpecificID = A.VariableSpecificID
WHERE B.SiteUUID LIKE '%ssro_S%'
GROUP BY C.State, D.VariableSpecificCV
ORDER BY C.State, D.VariableSpecificCV, CountSite desc;


-- Count # of WaDE_WaterSourceType sites per state
SELECT DISTINCT
C.State,
EE.Name as WaDE_WaterSourceType,
COUNT(DISTINCT B.SiteUUID) as CountSite
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
LEFT JOIN Core.WaterSources_dim E on E.WaterSourceID = A.WaterSourceID
LEFT JOIN CVs.WaterSourceType EE ON EE.Name = E.WaterSourceTypeCV
WHERE B.SiteUUID LIKE '%ssro_S%'
GROUP BY C.State, B.PODorPOUSite, EE.Name
ORDER BY C.State, CountSite desc;


-- Time range for SSPS per state
SELECT
C.State,
D.[AggregationIntervalUnitCV ],
min(A.ReportYearCV) as minYear,
max(A.ReportYearCV) as maxYear,
Count(DISTINCT A.TimeframeStartID) as numUniqueTimeSeriesEntries
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
LEFT JOIN Core.Variables_dim D on D.VariableSpecificID = A.VariableSpecificID
WHERE B.SiteUUID LIKE '%ssro_S%'
GROUP BY C.State, D.[AggregationIntervalUnitCV ]
ORDER BY C.State