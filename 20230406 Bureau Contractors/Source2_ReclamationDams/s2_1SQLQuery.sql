-- Last Updated: 11/02/2023
-- Purpose: create csv of water rights and owner names


SELECT
A.AllocationUUID,
A.AllocationOwner,
B. State
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.Organizations_dim B on B.OrganizatoinID = A.OrganizaqtionID
ORDER BY A.AllocationUUID;