dat<-read.csv2("D:/Falco/Data Science/household_power_consumption.txt",dec=".",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dat1<-dat[(as.Date(dat$Date,"%d/%m/%Y")>"2007-01-31") & (as.Date(dat$Date,"%d/%m/%Y")<"2007-02-03"),]

png("plot2.png",width=480,height=480,units="px")
plot(dat1$Global_active_power,type = "l",fg="black",col="black",ylab = "Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(1, at=c(1,length(dat1$Global_active_power)/2,length(dat1$Global_active_power)), labels=c("Thu","Fri","Sat"))
dev.off()