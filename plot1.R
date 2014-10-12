data<-read.csv("household_power_consumption.txt", sep=';',na.strings="?") #read data
data2<-data[data$Date %in% c("1/2/2007","2/2/2007"), ] # read in to data2 the relevant observations
png("plot1.png")
hist(data2$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()
