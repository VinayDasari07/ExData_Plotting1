file <- "./data/household_power_consumption.txt"

data <- read.table(file, header=TRUE, sep=";", dec=".", stringsAsFactors=FALSE)

newData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

gAP <- as.numeric(newData$Global_active_power)

datetime <- strptime(paste(newData$Date, newData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(datetime, gAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()