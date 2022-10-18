-- ==============================================================================================
-- ==============================================================================================
-- Project: 20221018 Count of POD vs POU WRs
-- Date: 10/18/2022

-- use this to export and analyze in Pandas
SELECT DISTINCT 
A.AllocationUUID,
BB.PODorPOUSite
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.AllocationBridge_Sites_fact B ON A.AllocationAmountID = B.AllocationAmountID
LEFT JOIN Core.Sites_dim BB ON BB.SiteID = B.SiteID;
