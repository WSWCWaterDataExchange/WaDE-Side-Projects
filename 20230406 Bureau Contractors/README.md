# 20230406 Bureau Contractors

Looking for a way to create a new OwnerClassificationCV tag (i.e., "Reclamation Water Receiver") on contractors who work with the USBR.  Will use USBR website and web-scrape information to find all contractor names. Used to compare water source type of POD sites to that of connecting POU sites per state.
USBR Site: https://www.usbr.gov/projects/
GitHub Link: https://github.com/WSWCWaterDataExchange/WaDE-Side-Projects/issues/2


***
### Notes:
- Use BeautifulSoup with python to web scrape HTML info from pages.  We are estimating 
- Use website + counter to load sites (ex: "https://www.usbr.gov/projects/index.php?id=" + counter_
- No good html tags to use, just look for everything in a col-6 tag with **.next_sibling** method to extract needed info.


***
### Results: 
I was able to web scrap the owner name and state of USBR contractors from that USBR website and save the results in a csv.  Found about 239 useable contractor names (removed duplicates or and bad html retrievals). However, I’m not sure how well of a job we can use these to match to existing WADE data.  When I tried to do an exact match I was only able to get 55 records, and when I did a partial match it was only 63 records.

Further inspecting the data by hand I caught a few instances that will be hard to match.

AllocationOwner | Contractor Name | Issue
---- | ---- | ---- 
BITTER ROOT IRRIGATION DISTRICT (MT) | Bitter Root Project Irrigation District (MT) | the inclusion of the *Project* in contractor name prevented exact or partial match from working
BRIDGER VALLEY WATER CONSERVANCY DISTRICT (UT) | BRIDGER VALLEY WATER CONSERVANCY DISTRICT (WY), BRIDGER VALLEY WATER CONSERVANCY DISTRICT (MT) | The allocation owner name in WaDE is noted in UT, but the contractor names from USBR are noted in WY & MT

Tried doing a partial match both ways (checking AllocationOwner -in- Contractor Names, and again with checking Contractor Names -in- AllocationOwner) with similar poor results.
