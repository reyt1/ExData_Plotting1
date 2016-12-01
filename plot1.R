#set your working dictory and view it
setwd("C:/Users/Reynaldo/Documents")
getwd()
"C:/Users/Reynaldo/Documents"

# download and unzip data
if(!file.exists('data')) dir.create('data')
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './data/PowerConsumption.zip')
unzip('./data/household_power_consumption.zip', exdir = './data')

# Plot 1
# open device
if(!file.exists("Graphics")) dir.create("Graphics")
png(filename = "./Graphics/plot1.png", width = 480, height = 480, units="px")
# plot figure
with(data, hist(Global_active_power,  xlab = "Global Active Power (kilowatt)",
                                      main = "Global Active Power", 
                                      col = "red"))
# close device
dev.off()

