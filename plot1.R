file <- "./data/household_power_consumption.txt"

data <- read.table(file, header=TRUE, sep=";", dec=".", stringsAsFactors=FALSE)

newData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

gAP <- as.numeric(newData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(gAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()