# read data into R
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

DataSubset$Date<- as.Date(DataSubset$Date, format = '%d/%m/%Y')
DataSubset$DataTime <- as.POSIXct(paste(DataSubset$Date, DataSubset$Time))
if(!file.exists("Graphics")) dir.create("Graphics")
png(filename = './Graphics/plot2.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
#plot(DateTime, as.numeric(DataSubset$Global_active_power), xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
plot(DataSubset$DateTime, as.numeric(DataSubset$Global_active_power), xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
  #Close device
dev.off()

