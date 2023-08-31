/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
C.State,
A.RegulatoryOverlayTypeCV as 'Regulatory Overlay Type Name',
A.WaterSourceTypeCV as 'Water Source Type',
Count(DISTINCT RegulatoryName) as 'Num of Reg Areas per Type in WaDE'
FROM Core.RegulatoryOverlay_dim as A
Inner JOIN Core.RegulatoryReportingUnits_fact as B on B.RegulatoryOverlayID = A.RegulatoryOverlayID
Inner JOIN Core.Organizations_dim as C on C.OrganizationID=B.OrganizationID
GROUP BY C.State, A.RegulatoryOverlayTypeCV, A.WaterSourceTypeCV
ORDER BY C.State, A.RegulatoryOverlayTypeCV desc;
