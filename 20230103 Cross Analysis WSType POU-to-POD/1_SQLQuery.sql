-- ==============================================================================================
-- ==============================================================================================
-- Project: 20230103 Cross Analysis WSType POU-to-POD
-- Date: 01/03/2023
-- Notes: This query returns water rights who have a POU site connected with PODs.

Select 
a.AllocationUUID,
bb.PODSitePOUSiteFactID,
-- POU Info
bb1.SiteUUID as POUSUUID,
bb1.PODorPOUSite as POUCheck,
c11.WaterSourceUUID as POUWSUUID,
c111.WaDEName as POUWaDEWSType,
-- POD Info
bb2.SiteUUID as PODSUUID,
bb2.PODorPOUSite as PODCheck,
c22.WaterSourceUUID as PODWSUUID,
c222.WaDEName as PODWaDEWSType
From Core.AllocationAmounts_fact a
Left Join Core.AllocationBridge_Sites_fact b on b.AllocationAmountID = a.AllocationAmountID
Left Join Core.PODSite_POUSite_fact bb on bb.POUSiteID = b.SiteID
-- POU Info
LEFT JOIN Core.Sites_dim bb1 on bb1.SiteID = bb.POUSiteID
LEFT JOIN Core.WaterSourceBridge_Sites_fact c1 on c1.SiteID = bb1.SiteID
LEFT JOIN Core.WaterSources_dim c11 on c11.WaterSourceID = c1.WaterSourceID
LEFT JOIN CVs.WaterSourceType c111 ON c111.Name = c11.WaterSourceTypeCV
-- POD Info
LEFT JOIN Core.Sites_dim bb2 on bb2.SiteID = bb.PODSiteID
LEFT JOIN Core.WaterSourceBridge_Sites_fact c2 on c2.SiteID = bb2.SiteID
LEFT JOIN Core.WaterSources_dim c22 on c22.WaterSourceID = c2.WaterSourceID
LEFT JOIN CVs.WaterSourceType c222 ON c222.Name = c22.WaterSourceTypeCV
WHERE bb1.SiteUUID IS NOT NULL
ORDER BY a.AllocationUUID;
