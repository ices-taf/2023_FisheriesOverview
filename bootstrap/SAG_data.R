library(icesTAF)
library(icesFO)

# out <- load_sag(2022, "Faroes")
# 
# sag_complete <- out
# write.taf(out, file = "SAG_complete_FO.csv", quote = TRUE)
# 
# 
# status <- load_sag_status(2022)
# write.taf(status, file = "bootstrap/data/SAG_data/SAG_status.csv", quote = TRUE)
# 


#before 2022 we downloaded the whole SAG. Might make sense to get back this function


sag_complete <- load_sag_complete(2022)
