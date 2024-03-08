library(icesTAF)
library(icesFO)
library(dplyr)

#Previous check of last year content in SAG and in SID

sid <- load_sid(2023)
sag23 <- icesSAG::getListStocks(2023)
sag23 <- sag23 %>% filter(Purpose == "Advice")


#1. Check those that should have been assessed in 2023 and were not, according to SID:
check <- sid%>% filter(YearOfNextAssessment == 2023)
#they appear in sag_complete, but they should be checked anyway as it is wrong in sid

#2. Check mismatches between sag22 and sid with assessment in 2022
sid23 <- sid%>% filter(YearOfLastAssessment == 2023)

#what is in sag and not in sid
check <- setdiff(sag23$StockKeyLabel,sid23$StockKeyLabel)

#what is in sid and not in sag
#these do not show up in sag_complete, none of the assessments
check <- setdiff(sid23$StockKeyLabel, sag23$StockKeyLabel)

#Luca, do you think we need to check something else?

# sag_complete <- load_sag_complete(2023)



