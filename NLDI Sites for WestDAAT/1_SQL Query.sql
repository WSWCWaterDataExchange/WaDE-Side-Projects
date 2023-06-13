-- ==============================================================================================
-- Project: 20220810 NLDI Sites for WestDAAT
-- Goal: need to create json on specific site info to be used in the NLDI query
-- Date: 08/10/2022

-- will do a few elements in python
	-- will dome some groupby by SiteUUID
	-- will left-join organization info in python

-- Site info
SELECT DISTINCT
A.SiteUUID,
A.Latitude,
A.Longitude
FROM Core.Sites_dim A
WHERE A.SiteUUID LIKE '%wr_S%' AND A.Latitude > 0
ORDER BY A.SiteUUID;


-- oraganization info
-- oraganization related to wr only.
SELECT DISTINCT
B.State,
B.OrganizationUUID
FROM Core.AllocationAmounts_fact A
-- Allocation -to- Organization
LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID;
