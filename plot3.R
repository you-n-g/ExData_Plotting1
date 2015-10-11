
# get and filter the data
source("load_data.R")

# plot data
plot(data$strptime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$strptime, data$Sub_metering_2, col="red")
lines(data$strptime, data$Sub_metering_3, col="blue")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.7)


# save pic
dev.copy(device = png, file="plot3.png", height=480, width=480)
dev.off()
