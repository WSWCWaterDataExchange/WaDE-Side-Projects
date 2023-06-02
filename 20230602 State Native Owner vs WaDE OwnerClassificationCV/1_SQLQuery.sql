-- ==============================================================================================
-- ==============================================================================================
-- Project: 20230602 State Native Owner vs WaDE OwnerClassificationCV
-- Last Updated: 06/02/2023


SELECT DISTINCT
B.State,
A.AllocationOwner,
A.OwnerClassificationCV
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID
WHERE A.OwnerClassificationCV NOT IN ('WaDE Unspecified', 'Private', 'In Review')
ORDER BY A.OwnerClassificationCV, B.State, A.AllocationOwner;