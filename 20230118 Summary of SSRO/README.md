# 20230118 Summary of SSRO
For Site Specific Reservoir and Observation Site (RRSO) timeseries data in WaDE, count the folloiwng...
- Num of POD/POU by site per state
- Num of VariableCV by site per state
- Num of VariableSpecificCV by site per state
- Num of WaterSourceType (WaDE version) by site per state
- Time range of timeseries data per state.


Last run results: 04/04/2023
See Summary Results.xslx for a summary of the results.


State|WaDENameS|CountSite
----|----|----
CA|Reservoir|125
CA|Canal / Ditch / Diversion|15
CO|Well / Pump / Spring / Groundwater Point|7242
CO|Reservoir|905
CO|Surface Water Point|309
CO|Unspecified|227
CO|Canal / Ditch / Diversion|217
ID|Surface Water Point|177
MT|Surface Water Point|87
NE|Stream Gage|107
NE|Canal / Ditch / Diversion|101
NE|Reservoir|1
NV|Stream Gage|682
NV|Well / Pump / Spring / Groundwater Point|603
NV|Surface Water Point|2
OR|Stream Gage|85
OR|Canal / Ditch / Diversion|12
TX|Reservoir|122
UT|Canal / Ditch / Diversion|1123
UT|Reservoir|32
WY|Surface Water Point|533
WY|Reservoir|37



State|VariableCV|CountSite
----|----|----
CA|Discharge Flow|15
CA|Reservoir Level|128
CO|Discharge Flow|8900
ID|Discharge Flow|177
MT|Discharge Flow|79
MT|Reservoir Level|25
NE|Discharge Flow|209
NV|Discharge Flow|1287
OR|Discharge Flow|97
TX|Reservoir Level|122
TX|Reservoir Storage|122
UT|Discharge|1105
UT|Discharge AF|1
UT|Diversion|10
UT|Evaporation|1
UT|Stage|6
UT|Storage|32
WY|Discharge|489
WY|Field Visit Discharge|314
WY|Historical Discharge|323
WY|Historical Storage|17
WY|Storage|38


State|VariableSpecificCV|CountSite
----|----|----
CA|Discharge Flow_Monthly_Stage_Surface Water|15
CA|Reservoir Level_Monthly_Storage_Surface Water|128
CO|Discharge Flow_Annual_DivTotal_Groundwater|6281
CO|Discharge Flow_Annual_DivTotal_Surface Water|2619
ID|Discharge Flow_Daily_Stage_Surface Water|177
MT|Discharge Flow_Daily_Discharge_Surface Water|79
MT|Reservoir Level_Daily_Stage_Surface Water|25
NE|Discharge Flow_Daily_Unspecified_Surface Water|209
NV|Discharge Flow_Daily_Discharge_Surface Water|1287
OR|Discharge Flow_Daily_Unspecified_Surface Water|97
TX|Reservoir Level_Daily_Storage_Surface Water|122
TX|Reservoir Storage_Daily_Storage_Surface Water|122
UT|Discharge AF_Daily_Discharge_Surface Water|1
UT|Discharge_Daily_Discharge_Surface Water|1105
UT|Diversion_Daily_Diversion_Surface Water|10
UT|Evaporation_Daily_Evaporation_Surface Water|1
UT|Stage_Daily_Stage_Surface Water|6
UT|Storage_Daily_Storage_Surface Water|32
WY|Discharge_Daily_Discharge_Surface Water|489
WY|Field Visit Discharge_Daily_Discharge_Surface Water|314
WY|Historical Discharge_Daily_Discharge_Surface Water|323
WY|Historical Storage_Daily_Storage_Surface Water|17
WY|Storage_Daily_Storage_Surface Water|38


State|WaDE_WaterSourceType|CountSite
----|----|----
CA|Surface Water|128
CA|Stream/River - Perennial|7
CA|Artificial Path|5
CA|Canal/Ditch|2
CA|Stream/River - Intermittent|1
CO|Groundwater|6281
CO|Surface Water|2619
ID|Surface Water|177
MT|Surface Water|87
NE|Surface Water|209
NV|Surface Water|747
NV|Groundwater|540
OR|Runoff|74
OR|Unspecified|20
OR|Spring|3
TX|Surface Water|122
UT|Surface Water|1123
UT|Surface Water|32
WY|Surface Water|533
WY|Surface Water|37


State|AggregationIntervalUnitCV |minYear|maxYear|numUniqueTimeSeriesEntries|TimeRange_Yrs
----|----|---- |----|----|----
CA|Monthly|1950|2022|864|72
CO|Annual|1941|2021|59|80
ID|Daily|1993|2022|10236|29
MT|Daily|1961|2020|15399|59
NE|Daily|2000|2022|8379|22
NV|Daily|1900|2021|11803|121
OR|Daily|1951|2022|25719|71
TX|Daily|1915|2022|39274|107
UT|Daily|1930|2023|31648|93
WY|Daily|1904|2023|43546|119