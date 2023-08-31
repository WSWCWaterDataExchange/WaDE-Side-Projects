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


| Owner Classification (By WaDE)          |  Count of Water Rights  |
|-----------------------------------------|-------------------------|
| WaDE Unspecified                        |  1,289,501              |
| Private                                 |  234,124                |
| Bureau of Land Management (USBLM)       |  68,273                 |
| Forest Service (USFS)                   |  33,848                 |Cancel changes
| National Park Service (USNPS)           |  14,227                 |
| In Review                               |  8,440                  |
| Fish and Wildlife Service (USFWS)       |  3,332                  |
| Military                                |  2,664                  |
| Department of Agriculture (USDA)        |  2,220                  |
| Bureau Reclamation (USBR)               |  2,163                  |
| United States of America                |  1,644                  |
| Native American                         |  1,627                  |
| Bureau of Indian Affairs (USBIA)        |  1,440                  |
| Environmental Protection Agency (USEPA) |  348                    |
| Geological Survey (USGS)                |  229                    |
| Department of Energy (USDOE)            |  65                     |
| General Services Administration (USGSA) |  22                     |
| Federal Aviation Administration (USFAA) |  4                      |
