-- ==============================================================================================
-- Project: 20220810 NLDI Sites for WestDAAT
-- Goal: need to create json on specific site info to be used in the NLDI query
-- Date: 08/10/2022

-- will do a few elements in python
	-- will dome some groupby by SiteUUID
	-- will left-join organization info in python

-- one query to get it all
SELECT DISTINCT
A.SiteUUID,
A.Latitude,
A.Longitude,
C.State,
C.OrganizationUUID
FROM Core.Sites_dim A
LEFT JOIN Core.AllocationBridge_Sites_fact B on B.SiteID = A.SiteID
LEFT JOIN Core.AllocationAmounts_fact BB on BB.AllocationAmountID = B.AllocationAmountID
LEFT JOIN Core.Organizations_dim C on C.OrganizationID = BB.OrganizationID
WHERE A.SiteUUID LIKE '%wr_S%' AND A.Latitude > 0
ORDER BY A.SiteUUID;