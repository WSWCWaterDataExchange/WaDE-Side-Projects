**Query**
```SELECT DISTINCT
C.State,
GG.Name as NativeBeneficialUse,
GG.WaDEName as WaDEBeneficaluse
FROM Core.AllocationAmounts_fact A
LEFT JOIN Core.Organizations_dim C on C.OrganizationID = A.OrganizationID
LEFT JOIN Core.AllocationBridge_BeneficialUses_fact G on G.AllocationAmountID = A.AllocationAmountID
LEFT JOIN CVs.BeneficialUses GG on GG.Name = G.BeneficialUseCV
WHERE C.State = 'MT'
ORDER BY GG.WaDEName asc;
```

**Table** 


**State**|**NativeBeneficialUse**|**WaDEBeneficaluse**
:-----:|:-----:|:-----:
MT|Agricultural Spraying|Agriculture Irrigation
MT|Irrigation|Agriculture Irrigation
MT|Instream Fishery|Aquaculture
MT|Fish Raceways|Aquaculture
MT|Fishery|Aquaculture
MT|Aquifer Recharge|Aquifer Recharge
MT|Marketing For Mitigation/Aquifer Recharge|Aquifer Recharge
MT|Observation And Testing|Aquifer Recharge
MT|Commercial|Commercial/Industrial
MT|Industrial|Commercial/Industrial
MT|Oil Well Flooding|Commercial/Industrial
MT|Sale|Commercial/Industrial
MT|Domestic|Domestic
MT|Multiple Domestic|Domestic
MT|Fire Protection|Fire
MT|Geothermal Heating|Geothermal
MT|Geothermal|Geothermal
MT|Power Generation|Hydroelectric
MT|Wildlife|In-stream Flow
MT|Pollution Abatement|In-stream Flow
MT|WILDLIFE/WATERFOWL|In-stream Flow
MT|Instream Flow|In-stream Flow
MT|Fish And Wildlife|In-stream Flow
MT|Stock|Livestock
MT|Mining|Mining
MT|Institutional|Municipal Irrigation
MT|Lawn And Garden|Municipal Irrigation
MT|Sediment Control|Other
MT|Mitigation Water|Other
MT|Wildlife Habitat Maintenance And Enhancement|Other
MT|Flow Through Fish Pond|Other
MT|Flood Control|Other
MT|NONCONSUMPTIVE|Other
MT|Erosion Control|Other
MT|Wildlife Habitat|Other
MT|DIVERSION OUT OF BASIN|Other
MT|Water Marketing|Other
MT|Other Purpose|Other
MT|Waterfowl|Other
MT|Navigation|Other
MT|Wetland|Other
MT|Wetland Mitigation Credit|Other
MT|Municipal|Public Supply
MT|Recreation|Recreation
MT|Storage|Reservoir Storage
MT|Unknown|Unspecified
MT|WaDE Unspecified|Unspecified
MT|Any Purpose|Unspecified
MT|Augmentation|Unspecified
