data<-read.csv("household_power_consumption.txt", sep=';',na.strings="?") #read data
data2<-data[data$Date %in% c("1/2/2007","2/2/2007"), ] # read in to data2 the relevant observations
times <- paste(data2$Date,data2$Time, sep = ',')# combine Date and Time
d <- strptime(times, format="%d/%m/%Y,%H:%M:%S") #create a variable for plotting Time
png("plot3.png")
plot(d,data2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(d,data2$Sub_metering_1)
lines(d,data2$Sub_metering_2,col="red")
lines(d,data2$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","blue","red"),bty="n")
dev.off()