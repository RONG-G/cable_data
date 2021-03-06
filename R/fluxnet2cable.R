# process fluxnet to CABLE modelling
# RG 19 MAR 2019

# #########################
rm(list=ls())
source('R/labs.R')
files <- dir("E:/fluxsites/output/", recursive = T, 
             pattern = "*.FULLSET_[HR|HH]_*.", full.names = T)

# #########################
# *** start ****
# -- S1. extract HH+HR files from zip to csv 

# #########################
# -- S1.2. extract HH+HR observation csv 
for (filecsv in files){
    tryCatch({
        # test at site N0.1
        # filecsv <- files[1]
        # read file name
        sitenm <- basename(filecsv)
        # read csv
        dt <- fread(filecsv, sep = ",", header = T, showProgress = F, verbose = F)
        # out path
        outfile <- paste("E:/fluxsites/GF_HH_HR_raw/",toString(sitenm),sep ="")
        # save data 
        fwrite(data.table(dt), file = outfile)
    },
    error = function(e) message(sprintf("%s", e)))
}


# #########################
# -- S1.2. extract HH+HR ERAI csv 
filesERA <- dir("E:/fluxsites/output/", recursive = T, 
             pattern = "*.ERAI_[HR|HH]_*.", full.names = T)
for (fileERA in filesERA){
    tryCatch({
        # test at site N0.1
        # filecsv <- files[1]
        # read file name
        sitenm <- basename(fileERA)
        # read csv
        de <- fread(fileERA, sep = ",", header = T, showProgress = F, verbose = F)
        # out path
        outfileERA <- paste("E:/fluxsites/GF_HH_HR_ERA/",toString(sitenm),sep ="")
        # save data 
        fwrite(data.table(de), file = outfileERA)
    },
    error = function(e) message(sprintf("%s", e)))
}

# # *** end ***
