# 20230118 Summary of SSRO
Summary of site specific timseries within WaDE, including...
- 1) **Site Specific Reservoir and Observation Site (SSRO)** data
- 2) **Water Right Withdrawals (WR)** data

![image](https://github.com/WSWCWaterDataExchange/WaDE-Side-Projects/blob/main/20230118%20Summary%20of%20SSRO/WestDAAT_time_series_data.png)


The following summaries are provdied...
- Num of POD/POU by site type per state
- Num of VariableCV by site per state
- Num of VariableSpecificCV by site per state
- Num of WaterSourceType (WaDE version) by site per state
- Time range of timeseries data per state.

**The data is visualized through this RShiny app**
https://waterdataexchangewswc.shinyapps.io/SiteSpecificReservoirAndObservationSiteDemo/

Last run results: 02/15/2024. See provdied [Summary Results.xslx](https://github.com/WSWCWaterDataExchange/WaDE-Side-Projects/blob/main/20230118%20Summary%20of%20SSRO/Summary%20Results.xlsx) for a hard copy of the summary results.

***
### Num of POD/POU by site type per state
State|WaDENameS|CountSite
----|----|----
CA|Surface Water Point|34486
CA|Reservoir/Dam|125
CA|Unspecified|65
CA|Canal / Ditch / Diversion|15
CO|Well / Pump / Spring / Groundwater Point|8710
CO|Reservoir/Dam|961
CO|Canal / Ditch / Diversion|949
CO|Surface Water Point|311
CO|Unspecified|249
CO|Power Plant / Geothermal|1
ID|Surface Water Point|177
MT|Surface Water Point|87
ND|Unspecified|2668
NE|Stream Gage|107
NE|Canal / Ditch / Diversion|101
NE|Reservoir/Dam|1
NM|Canal / Ditch / Diversion|168
NV|Stream Gage|682
NV|Well / Pump / Spring / Groundwater Point|603
NV|Surface Water Point|2
OK|Surface Water Point|16
OR|Stream Gage|85
OR|Canal / Ditch / Diversion|12
TX|Canal / Ditch / Diversion|3964
TX|Reservoir/Dam|2119
TX|Surface Water Point|857
TX|Unspecified|272
TX|Well / Pump / Spring / Groundwater Point|5
UT|Canal / Ditch / Diversion|1123
UT|Reservoir/Dam|32
WY|Surface Water Point|533


***
### Num of VariableCV by site per state
State|VariableCV|CountSite
----|----|----
CA|Discharge Flow|15
CA|Reservoir Level|128
CA|Water Use|34551
CO|Discharge Flow|11181
ID|Discharge Flow|177
MT|Discharge Flow|79
MT|Reservoir Level|25
ND|Withdrawal|2668
NE|Discharge Flow|209
NM|Discharge|168
NV|Discharge Flow|1287
OK|Discharge MDF|8
OK|Discharge MDF JTW 062922|1
OK|Discharge Mean Daily|7
OR|Discharge Flow|97
TX|Reservoir Level|122
TX|Reservoir Storage|122
TX|Water Use|7095
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

***
### Num of VariableSpecificCV by site per state
State|VariableSpecificCV|CountSite
----|----|----
CA|Discharge Flow_Monthly_Stage_Surface Water|15
CA|Reservoir Level_Monthly_Storage_Surface Water|128
CA|Water Use_Monthly_Agriculture Irrigation_Surface Water|3395
CA|Water Use_Monthly_Agriculture Irrigation_Unspecified|6499
CA|Water Use_Monthly_Aquaculture_Surface Water|42
CA|Water Use_Monthly_Aquaculture_Unspecified|285
CA|Water Use_Monthly_Commercial/Industrial_Surface Water|48
CA|Water Use_Monthly_Commercial/Industrial_Unspecified|178
CA|Water Use_Monthly_Domestic_Surface Water|2661
CA|Water Use_Monthly_Domestic_Unspecified|6555
CA|Water Use_Monthly_Fire_Surface Water|309
CA|Water Use_Monthly_Fire_Unspecified|1915
CA|Water Use_Monthly_Hydroelectric_Surface Water|27
CA|Water Use_Monthly_Hydroelectric_Unspecified|528
CA|Water Use_Monthly_In-Stream Flow_Surface Water|467
CA|Water Use_Monthly_In-Stream Flow_Unspecified|2031
CA|Water Use_Monthly_Livestock_Surface Water|443
CA|Water Use_Monthly_Livestock_Unspecified|5336
CA|Water Use_Monthly_Mining_Surface Water|4
CA|Water Use_Monthly_Mining_Unspecified|21
CA|Water Use_Monthly_Municipal Irrigation_Surface Water|59
CA|Water Use_Monthly_Other_Surface Water|959
CA|Water Use_Monthly_Other_Unspecified|1210
CA|Water Use_Monthly_Public Supply_Surface Water|180
CA|Water Use_Monthly_Public Supply_Unspecified|405
CA|Water Use_Monthly_Recreation_Surface Water|53
CA|Water Use_Monthly_Recreation_Unspecified|711
CA|Water Use_Monthly_Snow_Surface Water|1
CA|Water Use_Monthly_Snow_Unspecified|4
CA|Water Use_Monthly_Thermoelectric Cooling_Surface Water|19
CA|Water Use_Monthly_Thermoelectric Cooling_Unspecified|43
CA|Water Use_Monthly_Unspecified_Surface Water|26
CA|Water Use_Monthly_Unspecified_Unspecified|137
CO|Discharge Flow_Annual_DivTotal_Groundwater|6281
CO|Discharge Flow_Annual_DivTotal_Surface Water|2619
CO|Discharge Flow_Monthly_Agriculture Irrigation_Groundwater|1170
CO|Discharge Flow_Monthly_Agriculture Irrigation_Surface Water|759
CO|Discharge Flow_Monthly_Aquaculture_Groundwater|1
CO|Discharge Flow_Monthly_Aquaculture_Surface Water|21
CO|Discharge Flow_Monthly_Commercial/Industrial_Groundwater|101
CO|Discharge Flow_Monthly_Commercial/Industrial_Surface Water|15
CO|Discharge Flow_Monthly_Domestic_Groundwater|37
CO|Discharge Flow_Monthly_Domestic_Surface Water|10
CO|Discharge Flow_Monthly_Fire_Groundwater|3
CO|Discharge Flow_Monthly_Fire_Surface Water|2
CO|Discharge Flow_Monthly_Hydroelectric_Groundwater|1
CO|Discharge Flow_Monthly_Hydroelectric_Surface Water|3
CO|Discharge Flow_Monthly_In-Stream Flow_Groundwater|1
CO|Discharge Flow_Monthly_In-Stream Flow_Surface Water|1
CO|Discharge Flow_Monthly_Livestock_Groundwater|9
CO|Discharge Flow_Monthly_Livestock_Surface Water|4
CO|Discharge Flow_Monthly_Public Supply_Groundwater|99
CO|Discharge Flow_Monthly_Public Supply_Surface Water|10
CO|Discharge Flow_Monthly_Recreation_Surface Water|4
CO|Discharge Flow_Monthly_Reservoir Storage_Surface Water|3
CO|Discharge Flow_Monthly_Unspecified_Groundwater|24
CO|Discharge Flow_Monthly_Unspecified_Surface Water|3
ID|Discharge Flow_Daily_Stage_Surface Water|177
MT|Discharge Flow_Daily_Discharge_Surface Water|79
MT|Reservoir Level_Daily_Stage_Surface Water|25
ND|Withdrawal_Annual_Agriculture Irrigation_Groundwater|1014
ND|Withdrawal_Annual_Agriculture Irrigation_Surface Water|778
ND|Withdrawal_Annual_Commercial/Industrial_Groundwater|173
ND|Withdrawal_Annual_Commercial/Industrial_Surface Water|34
ND|Withdrawal_Annual_Domestic_Groundwater|11
ND|Withdrawal_Annual_Domestic_Surface Water|21
ND|Withdrawal_Annual_Hydroelectric_Surface Water|6
ND|Withdrawal_Annual_In-Stream Flow_Groundwater|5
ND|Withdrawal_Annual_In-Stream Flow_Surface Water|17
ND|Withdrawal_Annual_Livestock_Surface Water|31
ND|Withdrawal_Annual_Other_Surface Water|19
ND|Withdrawal_Annual_Public Supply_Groundwater|436
ND|Withdrawal_Annual_Public Supply_Surface Water|55
ND|Withdrawal_Annual_Recreation_Groundwater|2
ND|Withdrawal_Annual_Recreation_Surface Water|112
NE|Discharge Flow_Daily_Unspecified_Surface Water|209
NM|Discharge_Daily_Stream Gage_Surface Water|168
NV|Discharge Flow_Daily_Discharge_Surface Water|1287
OK|Discharge MDF JTW 062922_Daily_Stream Gage_Surface Water|1
OK|Discharge MDF_Daily_Stream Gage_Surface Water|8
OK|Discharge Mean Daily_Daily_Stream Gage_Surface Water|7
OR|Discharge Flow_Daily_Unspecified_Surface Water|97
TX|Reservoir Level_Daily_Storage_Surface Water|122
TX|Reservoir Storage_Daily_Storage_Surface Water|122
TX|Water Use_Monthly_Agriculture Irrigation_Surface Water|5347
TX|Water Use_Monthly_Aquaculture_Surface Water|6
TX|Water Use_Monthly_Aquifer Recharge_Surface Water|12
TX|Water Use_Monthly_Commercial/Industrial_Surface Water|1427
TX|Water Use_Monthly_Domestic_Surface Water|80
TX|Water Use_Monthly_Hydroelectric_Surface Water|76
TX|Water Use_Monthly_In-Stream Flow_Surface Water|30
TX|Water Use_Monthly_Livestock_Surface Water|65
TX|Water Use_Monthly_Mining_Surface Water|830
TX|Water Use_Monthly_Municipal Irrigation_Surface Water|11
TX|Water Use_Monthly_Other_Surface Water|411
TX|Water Use_Monthly_Public Supply_Surface Water|1540
TX|Water Use_Monthly_Recreation_Surface Water|660
TX|Water Use_Monthly_Reservoir Storage_Surface Water|6
TX|Water Use_Monthly_Treated Wastewater/Reuse_Surface Water|6
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


***
### Num of WaterSourceType (WaDE version) by site per state
State|WaDE_WaterSourceType|CountSite
----|----|----
CA|Unspecified|25858
CA|Surface Water|8693
CA|Surface Water|128
CA|Stream/River - Perennial|7
CA|Artificial Path|5
CA|Canal/Ditch|2
CA|Stream/River - Intermittent|1
CO|Groundwater|6281
CO|Surface Water|2619
CO|Groundwater|1446
CO|Surface Water|835
ID|Surface Water|177
MT|Surface Water|87
ND|Groundwater|1618
ND|Surface Water|1059
NE|Surface Water|209
NM|Surface Water|168
NV|Surface Water|747
NV|Groundwater|540
OK|Surface Water|16
OR|Runoff|74
OR|Unspecified|20
OR|Spring|3
TX|Surface Water|7095
TX|Surface Water|122
UT|Surface Water|1123
UT|Surface Water|32
WY|Surface Water|533


***
### Time range of timeseries data per state.
State|AggregationIntervalUnitCV |minYear|maxYear|numUniqueTimeSeriesEntries|TimeRange_Yrs
----|----|---- |----|----|----
CA|Monthly|1906|2022|911|116
CO|Monthly|1886|2024|1400|138
CO|Annual|1941|2021|59|80
ID|Daily|1993|2022|10236|29
MT|Daily|1961|2020|15399|59
ND|Annual|1965|2021|57|56
NE|Daily|2000|2022|8379|22
NM|Daily|2011|2024|4549|13
NV|Daily|1900|2021|11803|121
OK|Daily|2006|2024|6274|18
OR|Daily|1951|2022|25719|71
TX|Daily|1915|2022|39274|107
TX|Monthly|2009|2022|154|13
UT|Daily|1930|2023|31648|93

