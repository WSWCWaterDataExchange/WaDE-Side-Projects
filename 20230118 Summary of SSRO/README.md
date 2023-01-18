# 20230118 Summary of SSRO
For Site Specific Reservoir and Observation Site (RRSO) timeseries data in WaDE, count the folloiwng...
- Num of POD/POU by site per state
- Num of VariableCV by site per state
- Num of VariableSpecificCV by site per state
- Num of WaterSourceType (WaDE version) by site per state
- Time range of timeseries data per state.


Last run results: 01/18/2023
See Summary Results.xslx for a summary of the results.


State|PODorPOUSite|CountSite
----|----|----
CO|Observation Site|8900
ID|Observation Site|177
MT|Observation Site|87
NE|Observation Site|209
NV|Observation Site|1287
OR|Observation Site|95
TX|Observation Site|122


State|VariableCV|CountSite
----|----|----
CO|Discharge Flow|8900
ID|Discharge Flow|177
MT|Discharge Flow|79
MT|Reservoir Level|25
NE|Discharge Flow|209
NV|Discharge Flow|1287
OR|Discharge Flow|95
TX|Reservoir Level|122
TX|Reservoir Storage|122


State|VariableSpecificCV|CountSite
----|----|----
CO|Discharge Flow_Annual_DivTotal_Groundwater|6281
CO|Discharge Flow_Annual_DivTotal_Surface Water|2619
ID|Discharge Flow_Daily_Stage_Surface Water|177
MT|Discharge Flow_Daily_Discharge_Surface Water|79
MT|Reservoir Level_Daily_Stage_Surface Water|25
NE|Discharge Flow_Daily_Unspecified_Surface Water|209
NV|Discharge Flow_Daily_Discharge_Surface Water|1287
OR|Discharge Flow_Daily_Unspecified_Surface Water|95
TX|Reservoir Level_Daily_Storage_Surface Water|122
TX|Reservoir Storage_Daily_Storage_Surface Water|122


State|WaDE_WaterSourceType|CountSite
----|----|----
CO|Groundwater|6281
CO|Surface Water|2619
ID|Surface Water|177
MT|Surface Water|87
NE|Surface Water|209
NV|Surface Water|747
NV|Groundwater|540
OR|Runoff|62
OR|Unspecified|24
OR|Spring|9
TX|Surface Water|122


State|AggregationIntervalUnitCV |minYear|maxYear|numUniqueTimeSeriesEntries|TimeRange_Yrs
----|----|---- |----|----|----
CO|Annual|1941|2021|59|80
ID|Daily|1993|2022|10236|29
MT|Daily|1961|2020|15399|59
NE|Daily|2000|2022|8379|22
NV|Daily|1900|2021|11803|121
OR|Daily|1903|2022|43493|119
TX|Daily|1915|2022|39274|107