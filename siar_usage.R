#Monto Carlo Simulation#
# Fan et al. 2025 JGR-Atmosphere
# 
library(siar)
graphics.off()
setwd ("/Users/koukou/Desktop")

#Choose one
target <- read.csv ("geese2demo_Canton.csv", header=TRUE)

#As the target#
target
source<-read.csv ("sourcesdemo_Canton.csv", header=TRUE)

source

#Simulation#
output<-siarmcmcdirichletv4 (target, source)
options(max.print=100000000)
output
write.csv(output[["output"]], '/Users/koukou/Desktop/MCs_output_s.csv')