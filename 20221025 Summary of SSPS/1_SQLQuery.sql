-- ==============================================================================================
-- ==============================================================================================
-- Project: 20221025 Summary of SSPS
-- Date: 10/25/2022


-- Count # of POD/POU sites per state
SELECT DISTINCT
C.State,
B.PODorPOUSite,
Count(DISTINCT B.SiteUUID) as CountSite
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
WHERE B.SiteUUID LIKE '%ssps_S%'
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
WHERE B.SiteUUID LIKE '%ssps_S%'
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
WHERE B.SiteUUID LIKE '%ssps_S%'
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
WHERE B.SiteUUID LIKE '%ssps_S%'
GROUP BY C.State, B.PODorPOUSite, EE.Name
ORDER BY C.State, CountSite desc;


-- Time range for SSPS per state
SELECT
C.State,
min(E.Date) as minTimeFrameStart,
max(E.Date) as minTimeFrameStart,
min(F.Date) as minTimeFrameEnd,
max(F.Date) as maxTimeFrameEnd
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
LEFT JOIN Core.Date_dim E ON A.TimeframeStartID = E.DateID
LEFT JOIN Core.Date_dim F ON A.TimeframeEndID = F.DateID
WHERE B.SiteUUID LIKE '%ssps_S%'
GROUP BY C.State
ORDER BY C.State

-- Time range for SSPS per state
SELECT
C.State,
min(A.ReportYearCV) as minYear,
max(A.ReportYearCV) as maxYear,
(max(A.ReportYearCV) - min(A.ReportYearCV)) as TimeRange
FROM Core.SiteVariableAmounts_fact A
LEFT JOIN Core.Sites_dim B ON A.SiteID = B.SiteID
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
WHERE B.SiteUUID LIKE '%ssps_S%'
GROUP BY C.State
ORDER BY C.State

