-- ==============================================================================================
-- Project: Unique Combinations of WaDE definded benefical use per water right.
-- WaDE_QA_Server
-- Save results as Allocation_Benuse.csv
-- Date Updated: 05/06/2022

SELECT
A.AllocationAmountID,
A.AllocationNativeID,
A.AllocationOwner,
A.AllocationFlow_CFS,
A.AllocationVolume_AF,
AAA.Name as BenUse,
AAA.WaDEName as WaDEBenUse,
B.State
FROM Core.AllocationAmounts_fact A
-- AllocationAmounts -to- ABU Bridge -to- BU CV Table
LEFT JOIN Core.AllocationBridge_BeneficialUses_fact AA ON AA.AllocationAmountID = A.AllocationAmountID
LEFT JOIN CVs.BeneficialUses AAA ON AAA.Name = AA.BeneficialUseCV
--Allocation -to- Organization
LEFT JOIN Core.Organizations_dim B on B.OrganizationID = A.OrganizationID