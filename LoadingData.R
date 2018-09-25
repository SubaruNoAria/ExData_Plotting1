setwd("./ExData_Plotting1/data")
getwd()
#Convert the data to csv
if (!file.exists("./EPowerConsumption.csv")){
        #Migrate the data
        data <- read.table("./household_power_consumption.txt", 
                           header = T, 
                           sep = ";", 
                           na = "?",
                           colClasses = c(rep("character", 2),
                                          rep("numeric", 7)))
        attach(data)
        # Only use data from 20070201 to 20070202
        data <- data[(Date == "1/2/2007" | Date == "2/2/2007"),]
        attach(data)
        # Convert time variables and merge them, and copy into col[10]
        data$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
        #set row names by numerical order
        rownames(data) <- 1 : nrow(data)
        attach(data)
        data <- cbind(data[,10], data[,3:9])
        #set column names
        colname <- colnames(data)
        # Set merged time column name
        colname[1] <- "Date_Time"
        colnames(data) <- colname
        attach(data)
        write.csv(data, file = "./EPowerConsumption.csv", row.names = FALSE)
        
} else {
        # Read the data
        data <- read.csv("./EPowerConsumption.csv", header = TRUE)
}

