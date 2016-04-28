png("plot3.png", width = 480, height = 480, units = "px")
plot(data1$Time, data1$Sub_metering_1, type = "s", xlab="", ylab = "Energy sub metering")
lines(data1$Time, data1$Sub_metering_2, type = "s", col = "red")
lines(data1$Time, data1$Sub_metering_3, type = "s", col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = "-", 
       col=c("black", "red", "blue"))
dev.off()
