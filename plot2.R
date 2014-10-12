data<-read.csv("household_power_consumption.txt", sep=';',na.strings="?") #read data
data2<-data[data$Date %in% c("1/2/2007","2/2/2007"), ] # read in to data2 the relevant observations
times <- paste(data2$Date,data2$Time, sep = ',')# combine Date and Time
d <- strptime(times, format="%d/%m/%Y,%H:%M:%S") #create a variable for plotting Time
png("plot2.png")
plot(d,data2$Global_active_power,type="n",ylab="Global Average Power",xlab="")
lines(d,data2$Global_active_power)
dev.off()
