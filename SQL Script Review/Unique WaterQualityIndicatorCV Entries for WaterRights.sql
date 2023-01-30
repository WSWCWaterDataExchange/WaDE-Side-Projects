-- ==============================================================================================
-- Date: 01/30/2023
-- Note: create table of unique WaterQualityIndicatorCV entries used in the water right records.


Select DISTINCT
F.State,
E.WaterQualityIndicatorCV
From Core.AllocationAmounts_fact A
-- Left Join AllocationBridge_Sites_fact to Sites_dim to WaterSourceBridge_Sites_fact to WaterSources_dim
LEFT Join Core.AllocationBridge_Sites_fact B on B.AllocationAmountID = A.AllocationAmountID
LEFT Join Core.Sites_dim C on C.SiteID = B.SiteID
LEFT Join Core.WaterSourceBridge_Sites_fact D on D.SiteID = C.SiteID
LEFT Join Core.WaterSources_dim E on E.WaterSourceID = D.WaterSourceID
-- Left Join Organizations_dim to AllocationAmounts_fact
LEFT Join Core.Organizations_dim F on F.OrganizationID = A.OrganizationID