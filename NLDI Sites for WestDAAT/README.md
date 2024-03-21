# NLDI Site Generation Code

This repository stores code for the generation of sites used with the NLDI.

---

Notes on Project:

1. Run the provided two queries inside the 1_SQL Query.sql file. Export files as organization_raw.csv & sites_raw.csv respectively.

2. Run the provided 2_NLDISiteScrubCode.ipynb script in JupterNotebook. Resulting exports are wadeNLDISites.csv & gdf2_wadeNLDISites.geojson

3. Files are stored here: https://www.hydroshare.org/resource/5f665b7b82d74476930712f7e423a0d2/


**Update (March 2024)
**Kyle and his group at Geoconnex no longer need the file wadeNLDISites.csv because they can crawl this content from another source here: 
https://github.com/WSWCWaterDataExchange/WaDE-Side-Projects/tree/main/JsonLD_Geoconnex
