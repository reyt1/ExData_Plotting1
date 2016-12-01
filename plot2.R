# Plot 2
# convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
# open device
if(!file.exists("Graphics")) dir.create("Graphics")
png(filename = './Graphics/plot2.png', width = 480, height = 480, units="px")
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
# close device
dev.off()
