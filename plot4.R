# get and filter the data
source("load_data.R")

# plot data
plot(data$strptime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$strptime, data$Sub_metering_2, col="red")
lines(data$strptime, data$Sub_metering_3, col="blue")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2)


# plot data
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(data$strptime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

plot(data$strptime, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

plot(data$strptime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$strptime, data$Sub_metering_2, col="red")
lines(data$strptime, data$Sub_metering_3, col="blue")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2, cex = 0.5)

plot(data$strptime, data$Global_reactive_power, type="l", ylab="Global_active_power", xlab="datetime")



# save pic
dev.copy(device = png, file="plot4.png", height=480, width=480)
dev.off()