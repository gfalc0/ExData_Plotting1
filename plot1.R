dat<-read.csv2("D:/Falco/Data Science/household_power_consumption.txt",dec=".",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dat1<-dat[(as.Date(dat$Date,"%d/%m/%Y")>"2007-01-31") & (as.Date(dat$Date,"%d/%m/%Y")<"2007-02-03"),]

png("plot1.png",width=480,height=480,units="px")
hist(dat1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red",yaxp=c(0,1200,6),xaxp=c(0,6,3))
dev.off()

