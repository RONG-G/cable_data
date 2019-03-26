# FLUXNET data processing for CABLE run

-- start from raw data downloaded from FLUXNET --
1. extract obs files and gap_fill source according to Anna package FLUNETLSM
2. use the package to gapfill met, save to .nc
3. add processed MODIS LAI
4. change var name and unit for rainfall

