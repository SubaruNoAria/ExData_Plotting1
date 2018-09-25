## Plot 2
# Set the directory

setwd("./ExData_Plotting1")

source("LoadingData.R")
png(filename = "Plot2.png", width = 480, height = 480, units = "px")
plot(Date_Time, Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kW)", 
     xaxt = "n")
axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
lines(Date_Time, Global_active_power, col = "black")
dev.off()
rm(data)