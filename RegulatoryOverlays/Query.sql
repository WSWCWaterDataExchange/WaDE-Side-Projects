
-- Create summary table of Regulatory Info within WaDE
SELECT 
C.State,
A.RegulatoryOverlayTypeCV as 'Regulatory Overlay Type Name',
D.WaDEName as 'Regulatory Type',
A.WaterSourceTypeCV as 'Water Source Type',
Count(DISTINCT RegulatoryName) as 'Num of Reg Areas per Type in WaDE'
FROM Core.RegulatoryOverlay_dim as A
LEFT JOIN Core.RegulatoryReportingUnits_fact as B on B.RegulatoryOverlayID = A.RegulatoryOverlayID
LEFT JOIN Core.Organizations_dim as C on C.OrganizationID = B.OrganizationID
LEFT JOIN CVs.RegulatoryOverlayType D on D.Name = A.RegulatoryOverlayTypeCV
GROUP BY C.State, A.RegulatoryOverlayTypeCV, D.WaDEName, A.WaterSourceTypeCV
ORDER BY C.State, A.RegulatoryOverlayTypeCV desc;
