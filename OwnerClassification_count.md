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
|Private|2365908|
|Bureau of Land Management (USBLM)|68427|
|Forest Service (USFS)|35038|
|Unspecified|31411|
|National Park Service (USNPS)|16585|
|WaDE Blank|11704|
|United States of America|6237|
|Fish and Wildlife Service (USFWS)|4547|
|Military|3150|
|Bureau Reclamation (USBR)|2549|
|Department of Agriculture (USDA)|2505|
|Native American|2073|
|Reclamation Contractor|1188|
|Bureau of Indian Affairs (USBIA)|1153|
|Environmental Protection Agency (USEPA)|352|
|Geological Survey (USGS)|236|
|Department of Energy (USDOE)|65|
|General Services Administration (USGSA)|22|
|Federal Aviation Administration (USFAA)|4|
