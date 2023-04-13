/****** Script for SelectTopNRows command from SSMS  ******/
SELECT orgs.State,RegulatoryOverlayTypeCV,
Count(DISTINCT RegulatoryName) As CountRegulatoryOverlays

  FROM [Core].[RegulatoryOverlay_dim] as Overlays

  Inner JOIN Core.RegulatoryReportingUnits_fact As Bridge on Overlays.RegulatoryOverlayID=Bridge.RegulatoryOverlayID

  Inner JOIN Core.Organizations_dim As Orgs on  Orgs.OrganizationID=Bridge.OrganizationID

  GROUP BY Orgs.State,RegulatoryOverlayTypeCV
  ORDER BY orgs.State, RegulatoryOverlayTypeCV desc;
