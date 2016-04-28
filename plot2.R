png("plot2.png", width = 480, height = 480, units = "px")
plot(data1$Time, data1$Global_active_power, ylab="Global Active Power (kilowatts)", type = "s", xlab = "")
dev.off()
