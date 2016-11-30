#set your working dictory and view it
setwd("C:/Users/Reynaldo/Documents")
getwd()
"C:/Users/Reynaldo/Documents"

# download and unzip data
if(!file.exists('data')) dir.create('data')
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './data/PowerConsumption.zip')
unzip('./data/household_power_consumption.zip', exdir = './data')

# read data into R
files <- file('./data/household_power_consumption.txt')  
data <- read.table(files, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dim(data) #2075259x9
dim(DataSubset) #2880x9
head(DataSubset)

# Plot 1
# open device
if(!file.exists("Graphics")) dir.create("Graphics")
png(filename = './Graphics/plot1.png', width = 480, height = 480, units='px')
# plot figure
with(DataSubset, hist(as.numeric(DataSubset$Global_active_power), xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
 #Close device
dev.off()
