-- ==============================================================================================
-- Project: 20230126 USGS ss POU and POD WaterSourceType
-- Date Updated: 01/26/2023


SELECT
A.PODSitePOUSiteFactID,
Bd.SiteUUID as PODSiteUUID,
Bd.PODorPOUSite as PODCheck,
CdCC.WaDEName as PODWaDENameWS,
Bu.SiteUUID as POUSiteUUID,
Bu.PODorPOUSite as POUCheck,
CuCC.WaDEName as POUWaDENameWS
FROM Core.PODSite_POUSite_fact A
-- POD Join
LEFT JOIN Core.Sites_dim Bd on Bd.SiteID = A.PODSiteID
LEFT JOIN Core.WaterSourceBridge_Sites_fact Cd on Cd.SiteID = Bd.SiteID
LEFT JOIN Core.WaterSources_dim CdC on CdC.WaterSourceID = Cd.WaterSourceID
LEFT JOIN CVs.WaterSourceType CdCC ON CdCC.Name = CdC.WaterSourceTypeCV
-- POU Join
LEFT JOIN Core.Sites_dim Bu on Bu.SiteID = A.POUSiteID
LEFT JOIN Core.WaterSourceBridge_Sites_fact Cu on Cu.SiteID = Bu.SiteID
LEFT JOIN Core.WaterSources_dim CuC on CuC.WaterSourceID = Cu.WaterSourceID
LEFT JOIN CVs.WaterSourceType CuCC ON CuCC.Name = CuC.WaterSourceTypeCV
WHERE Bd.SiteUUID LIKE '%wr_S%'