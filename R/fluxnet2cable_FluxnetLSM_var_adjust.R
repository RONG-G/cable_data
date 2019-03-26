# # GLOBAL FLUXNET2015 processing for CABLE run
# # -- 2 -- change vars in nc
# # GR 20 Mar 2019
# 
# 
# rm(list=ls())
# source('R/labs.R')
# 
# library(ncdf4)
# library(cmsaf)
# 
# files <- dir("E:/fluxsites/GF_HH_HR_MET/Nc_files/Met/", full.names = T)
# 
# for(file in files){
#     tryCatch({
#         # file <- files[1]
#         
#         # change Precip(_qc) to Rainf(_qc)
#         change_att('Precip',file, v_name='Rainf')
#         change_att('Precip_qc',file, v_name='Rainf_qc')
# 
#     },
#     error = function(e) message(sprintf("%s", e)))
# }
# 
# # change_att('Precip',file, v_name='Rainf')
# # 
# # attributes(ncin$var)$names
# # pr <- ncvar_get(ncin, attributes(ncin$var)$names[11])
# # pr <- ncatt_get(ncin, attributes(ncin$var)$names[11])$unit
# # 
# # dim(pr)
# # nc_atts <- ncatt_get(ncin, 0)
# # names(nc_atts)
# # change_att('Precip',file, v_name='Rainf')
# # ncin <- nc_open(file, write = T)
# # # prcp <- ncvar_get(ncin, attributes(ncin$var)$names[11])
# # # prcp_in <- ncdim_def(name='R',units='degrees_east',vals=lon)
# # change Precip unit kg/m2/s to mm/d
# # ncin$var$Rainf$units='mm/s'
# # print(ncin$var$Rainf$units)
# # print(ncin)
# # nc_sync(ncin)
# # nc_close(ncin)