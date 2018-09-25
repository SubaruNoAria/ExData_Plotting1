## Plot 4
# Set the directory
setwd("./ExData_Plotting1")

source("LoadingData.R")
png(filename = "Plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
# Top left
plot(Date_Time, Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kW)", 
     xaxt = "n")
lines(Date_Time, Global_active_power, col = "black")
axis(side = 1, 
     at = c(1, 1441, 2880), 
     labels = c("Thus", "Fri", "Sat"))

# Top right
plot(Date_Time, Voltage,
     type = "l", 
     xlab = "datetime", 
     ylab = "Voltage", 
     xaxt = "n")
lines(Date_Time, Voltage, col = "black")
axis(side = 1,
     at = c(1, 1441, 2880),
     labels = c("Thu", "Fri", "Sat"))

#Bottom - left
plot(Date_Time, Sub_metering_1, 
     type = "l", 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering", 
     xaxt = "n")
lines(Date_Time, Sub_metering_1, col = "black")
lines(Date_Time, Sub_metering_2, col = "red")
lines(Date_Time, Sub_metering_3, col = "blue")
legend("topright", 
       bty = "n", 
       col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 1)
axis(side = 1, 
     at = c(1, 1441, 2880), 
     labels = c("Thu", "Fri", "Sat"))

#Bottom - right
plot(Date_Time, Global_reactive_power, 
     type = "l", 
     col = "black", 
     xlab = "datetime", 
     ylab = colnames(data)[3], 
     xaxt = "n")
lines(Date_Time, Global_reactive_power, col = "black")
axis(side = 1, 
     at = c(1, 1441, 2880), 
     labels = c("Thu", "Fri", "Sat"))
dev.off()
rm(data)
