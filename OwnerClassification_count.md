# SQL Script
```
SELECT
OwnerClassificationCV,
Count(AllocationUUID) as CountNumWR
FROM Core.AllocationAmounts_fact
GROUP BY OwnerClassificationCV
ORDER BY CountNumWR desc;
```

# Result


|OwnerClassificationCV|CountNumWR|
|:----|:----|
|Private|2296457|
|Bureau of Land Management (USBLM)|67821|
|WaDE Blank|65830|
|Forest Service (USFS)|33562|
|Unspecified|31411|
|National Park Service (USNPS)|16891|
|United States of America|4357|
|Fish and Wildlife Service (USFWS)|4257|
|Military|2923|
|Department of Agriculture (USDA)|2469|
|Bureau Reclamation (USBR)|2373|
|Native American|1777|
|Reclamation Contractor|1188|
|Bureau of Indian Affairs (USBIA)|1135|
|Environmental Protection Agency (USEPA)|350|
|Geological Survey (USGS)|236|
|Department of Energy (USDOE)|65|
|General Services Administration (USGSA)|22|
|Federal Aviation Administration (USFAA)|4|
| Environmental Protection Agency (USEPA) |  348                    |
| Geological Survey (USGS)                |  229                    |
| Department of Energy (USDOE)            |  65                     |
| General Services Administration (USGSA) |  22                     |
| Federal Aviation Administration (USFAA) |  4                      |
