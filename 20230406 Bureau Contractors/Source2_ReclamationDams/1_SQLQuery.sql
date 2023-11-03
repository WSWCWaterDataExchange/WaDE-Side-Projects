-- Last Updated: 11/02/2023
-- Purpose: create csv of water rights and owner names


SELECT
A.AllocationUUID,
A.AllocationOwner,
A.OwnerClassificationCV,
B. State
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID
ORDER BY A.AllocationUUID;