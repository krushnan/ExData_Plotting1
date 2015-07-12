data <- read.table("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors=FALSE)
names(data)
dataSubset = data[data$Date %in% c("1/2/2007","2/2/2007") ,]
str(dataSubset)

dateTime = strptime(paste(dataSubset$Date, dataSubset$Time, sep = " "),format = "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(dataSubset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type = "l", xlab ="", ylab="Global Active Power (kilowatts)")
dev.off()
