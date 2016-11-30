# read data into R
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

Subsettime <- as.Date(subSetData$Date, format = '%d/%m/%Y')
DateTime <- as.POSIXct(paste(Subsettime, subSetData$Time))
if(!file.exists("Graphics")) dir.create("Graphics")
png(filename = './Graphics/plot2.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(DateTime, as.numeric(subSetData$Global_active_power), xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
dev.off()

