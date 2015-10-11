# get and filter the data
data = read.table("./household_power_consumption.txt", sep=";", header = T, colClasses = c("character", "character", rep("numeric", 7)), na.strings = "?")
data = data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
data = cbind(data, list(strptime=strptime(paste(data$Date, data$Time, sep=" "),  "%d/%m/%Y %H:%M:%S")))