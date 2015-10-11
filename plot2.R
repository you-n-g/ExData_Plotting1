
# get and filter the data
source("load_data.R")

# plot data
plot(data$strptime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# save pic
dev.copy(device = png, file="plot2.png", height=480, width=480)
dev.off()