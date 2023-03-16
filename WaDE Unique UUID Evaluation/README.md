# WaDE UUID Evaluation
A repository to hold findings of creating unique UUID values to store state native data records within WaDE.

***
## Summary of Findings Thus Far
### 2023-03-16 UTWwr
- For watersource info, no native value was provided so we created our own temporary native ID value and our own UUID.
- For site info we used native provdied **RECORD_ID** input to create unique UUID values.  This seemed to work fine.
- For waterallocations we tried to use native provdied **WRNUM** input. However, this did not seem to work. There were what we would consider to be ‘active rights’ with duplicate UUID records split by WaDE elements we cannot combine at this time (e.g., AllocationLegalStatusCV, AllocationPriorityDate, AllocationFlow_CFS, AllocationVolume_AF).  The state provided **WRNUM** does not appear to split the provdied data enough to fit into our WaDE structure.

