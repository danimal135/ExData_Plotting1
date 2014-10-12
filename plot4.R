data<-read.csv("household_power_consumption.txt", sep=';',na.strings="?") #read data
data2<-data[data$Date %in% c("1/2/2007","2/2/2007"), ] # read in to data2 the relevant observations
times <- paste(data2$Date,data2$Time, sep = ',')# combine Date and Time
d <- strptime(times, format="%d/%m/%Y,%H:%M:%S") #create a variable for plotting Time
png("plot4.png")
par(mfrow=c(2,2))
plot(d,data2$Global_active_power,type="n",ylab="Global Active Power",xlab="")
lines(d,data2$Global_active_power)
plot(d,data2$Voltage,xlab="datetime",ylab="Voltage",type="n")
lines(d,data2$Voltage)
plot(d,data2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(d,data2$Sub_metering_1)
lines(d,data2$Sub_metering_2,col="red")
lines(d,data2$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","blue","red",bty="n"))
plot(d,data2$Global_reactive_power,type="n",ylab="Global_Reactive_Power",xlab="datetime")
lines(d,data2$Global_reactive_power)
dev.off()