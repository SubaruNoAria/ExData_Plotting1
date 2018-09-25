##Plot 1
## Set to directory
setwd("./ExData_Plotting1")

source("LoadingData.R")
png(filename = "Plot1.png", width = 480, height = 480, units = "px")
hist(Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kW)", 
     breaks = 12, 
     ylim = c(0, 1200))
dev.off()
rm(data)
