-- ==============================================================================================
-- ==============================================================================================
-- Project: 20230602 State Native Owner vs WaDE OwnerClassificationCV
-- Last Updated: 06/02/2023


SELECT DISTINCT
AllocationOwner,
OwnerClassificationCV
FROM Core.AllocationAmounts_fact
WHERE OwnerClassificationCV NOT IN ('WaDE Unspecified', 'Private', 'In Review')
ORDER BY OwnerClassificationCV, AllocationOwner;