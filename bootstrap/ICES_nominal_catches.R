# wd: bootstrap/data/ICES_nominal_catches

library(icesTAF)
taf.library(icesFO)

hist <- load_historical_catches()
write.taf(hist, file = "bootstrap/data/ICES_nominal_catches/ICES_historical_catches.csv", quote = TRUE)

official <- load_official_catches()
write.taf(official, file = "bootstrap/data/ICES_nominal_catches/ICES_2006_2020_catches.csv", quote = TRUE)


