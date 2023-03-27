-- ==============================================================================================
-- Project: 20230228 Summary of R Shiny Aggregated Data Demo
-- Date Updated: 02/28/2023
-- Goal:
	-- Create summary info of high level overview of Agg R Shiny App.
	-- Each state in the CO basin. Use entire state.
	-- Min and max time series values provided by each state.
	-- Used CV terms by state. Report back the WADE term value and ignore the native terms for now…
		--Reporting area type, Beneficial use, Watersource, VariableCV type, Time step

-- get AggregatedAmounts_fact info
SELECT DISTINCT
E.State,
BB.WaDEName as WaDENameRU,
CC.WaDEName as WaDENameWS,
DD.WaDEName as WaDENameV,
D.AggregationIntervalUnitCV as TimeStep,
FF.WadeName as WaDENameBU
FROM CORE.AggregatedAmounts_fact A
---- AggregatedAmounts_fact -to- ReportingUnits_dim      -to- Variables & WaterSource -to- CV Table
LEFT JOIN Core.ReportingUnits_dim B ON B.ReportingUnitID = A.ReportingUnitID
LEFT JOIN Core.WaterSources_dim C on C.WaterSourceID = A.WaterSourceID
LEFT JOIN Core.Variables_dim D ON D.VariableSpecificID = A.VariableSpecificID
LEFT JOIN Core.Organizations_dim E ON E.OrganizationID = A.OrganizationID
---- CVs Tables
LEFT JOIN CVs.ReportingUnitType BB ON BB.Name = B.ReportingUnitTypeCV
LEFT JOIN CVs.WaterSourceType CC ON CC.Name = C.WaterSourceTypeCV
LEFT JOIN CVs.Variable DD on DD.Name = D.VariableCV
Left Join Core.AggBridge_BeneficialUses_fact F on F.AggregatedAmountID = A.AggregatedAmountID
Left Join CVs.BeneficialUses FF on FF.Name = F.BeneficialUseCV
WHERE E.State='CA' OR E.State='NV' OR E.State='UT' OR E.State='AZ' OR E.State='WY' OR E.State='CO' OR E.State='NM'
ORDER BY E.State

-- get timeframe
SELECT DISTINCT
C.State,
min(E.Date) as minTimeFrameStart,
max(F.Date) as maxTimeFrameEnd
FROM Core.AggregatedAmounts_fact A
LEFT JOIN Core.Organizations_dim C ON C.OrganizationID = A.OrganizationID
---- AggregatedAmounts_fact-to-Date_dim
LEFT JOIN Core.Date_dim E ON E.DateID = A.TimeframeStartID
LEFT JOIN Core.Date_dim F ON F.DateID = A.TimeframeEndID
---- AggregatedAmounts_fact-to-ReportingUnits_dim
LEFT JOIN Core.ReportingUnits_dim B ON B.ReportingUnitID = A.ReportingUnitID
WHERE C.State='CA' OR C.State='NV' OR C.State='UT' OR C.State='AZ' OR C.State='WY' OR C.State='CO' OR C.State='NM'
GROUP BY C.State
ORDER by C.State;




SELECT DISTINCT
E.State,
BB.WaDEName as WaDENameRU,
CC.WaDEName as WaDENameWS,
DD.WaDEName as WaDENameV,
D.AggregationIntervalUnitCV as TimeStep,
FF.WadeName as WaDENameBU,
min(G.Date) as minTimeFrameStart,
max(H.Date) as maxTimeFrameEnd
FROM CORE.AggregatedAmounts_fact A
---- AggregatedAmounts_fact -to- ReportingUnits_dim      -to- Variables & WaterSource -to- CV Table
LEFT JOIN Core.ReportingUnits_dim B ON B.ReportingUnitID = A.ReportingUnitID
LEFT JOIN Core.WaterSources_dim C on C.WaterSourceID = A.WaterSourceID
LEFT JOIN Core.Variables_dim D ON D.VariableSpecificID = A.VariableSpecificID
LEFT JOIN Core.Organizations_dim E ON E.OrganizationID = A.OrganizationID
---- CVs Tables
LEFT JOIN CVs.ReportingUnitType BB ON BB.Name = B.ReportingUnitTypeCV
LEFT JOIN CVs.WaterSourceType CC ON CC.Name = C.WaterSourceTypeCV
LEFT JOIN CVs.Variable DD on DD.Name = D.VariableCV
Left Join Core.AggBridge_BeneficialUses_fact F on F.AggregatedAmountID = A.AggregatedAmountID
Left Join CVs.BeneficialUses FF on FF.Name = F.BeneficialUseCV
---- AggregatedAmounts_fact-to-Date_dim
LEFT JOIN Core.Date_dim G ON G.DateID = A.TimeframeStartID
LEFT JOIN Core.Date_dim H ON H.DateID = A.TimeframeEndID
WHERE E.State='CA' OR E.State='NV' OR E.State='UT' OR E.State='AZ' OR E.State='WY' OR E.State='CO' OR E.State='NM'
GROUP BY E.State, BB.WaDEName, CC.WaDEName, DD.WaDEName, D.AggregationIntervalUnitCV, FF.WadeName
ORDER by E.State, BB.WaDEName, CC.WaDEName, DD.WaDEName, D.AggregationIntervalUnitCV, FF.WadeName;