

# get and filter the data
source("load_data.R")


# draw the plot
hist(data$Global_active_power, col = "red", xlab = "Globle Active Power (kilowatts)", main = "Globle Active Power", ylim = c(0, 1200) )



# save pic
dev.copy(device = png, file="plot1.png", height=480, width=480)
dev.off()