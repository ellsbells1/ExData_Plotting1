## download and unzip data in directory
## read in data from directory
wholeData<- read.csv("~/household_power_consumption.txt", sep=";", na.strings = "?")

## convert Date and Time variables 
wholeData$DateTime<- paste(wholeData$Date, wholeData$Time)
wholeData$DateTime <- strptime(wholeData$DateTime, "%d%m%y %H:%M:%S")

##subsetting data to only get the dates we need
data1<- wholeData[wholeData$Date %in% c("1/2/2007", "2/2/2007"),]
ATime <- strptime(paste(data1$date, data1$Time, sep = " "), "%d%m%y %H:%M:%S")
data1<- cbind(ATime, data1)

data1 <- wholeData[wholeData$Date %in% c("1/2/2007","2/2/2007"),]
DiffTime <-strptime(paste(data1$Date, data1$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data1 <- cbind(DiffTime, data1)

##making plot 3 and the PNG file
png("plot3.png", width = 480, height = 480, units = "px")
plot(data1$DiffTime, data1$Sub_metering_1, type = "s", xlab="", ylab = "Energy sub metering")
lines(data1$DiffTime, data1$Sub_metering_2, type = "s", col = "red")
lines(data1$DiffTime, data1$Sub_metering_3, type = "s", col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), 
       col=c("black", "red", "blue"))
dev.off()

