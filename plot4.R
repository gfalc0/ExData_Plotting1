dat<-read.csv2("D:/Falco/Data Science/household_power_consumption.txt",dec=".",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dat1<-dat[(as.Date(dat$Date,"%d/%m/%Y")>"2007-01-31") & (as.Date(dat$Date,"%d/%m/%Y")<"2007-02-03"),]

png("plot4.png",width=480,height=480,units="px")
par(mfcol=c(2,2))

plot(dat1$Global_active_power,type = "l",fg="black",col="black",ylab = "Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(1, at=c(1,length(dat1$Global_active_power)/2,length(dat1$Global_active_power)), labels=c("Thu","Fri","Sat"))

plot(dat1$Sub_metering_1 ,type = "l",fg="black",col="black",ylab = "Energy sub metering",xlab="",yaxp=c(0,30,3),ylim=range(c(0,40)), xaxt="n")
par(new=TRUE)
plot(dat1$Sub_metering_2 ,type = "l",fg="black",col="red",ylab = "Energy sub metering",xlab="",yaxp=c(0,40,3),ylim=range(c(0,40)),axes=FALSE,xaxt="n")
par(new=TRUE)
plot(dat1$Sub_metering_3 ,type = "l",fg="black",col="blue",ylab = "Energy sub metering",xlab="",ylim=range(c(0,40)),axes=FALSE,xaxt="n")
axis(1, at=c(1,length(dat1$Global_active_power)/2,length(dat1$Global_active_power)), labels=c("Thu","Fri","Sat"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),text.col="black")


plot(dat1$Voltage,type = "l",fg="black",col="black",ylab = "Voltage",xlab="datetime",xaxt="n")
axis(1, at=c(1,length(dat1$Global_active_power)/2,length(dat1$Global_active_power)), labels=c("Thu","Fri","Sat"))

plot(dat1$Global_reactive_power,type = "l",fg="black",col="black",ylab = "Global_reactive_power",xlab="datetime",xaxt="n")
axis(1, at=c(1,length(dat1$Global_active_power)/2,length(dat1$Global_active_power)), labels=c("Thu","Fri","Sat"))
dev.off()
