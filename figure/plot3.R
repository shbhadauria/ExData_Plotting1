# read data

data<-read.csv("C:/Users/shbhadauria/Desktop/coursera/exploratory analysis/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)
#converting date field to date format
date<-as.Date(data$Date, format= "%d/%m/%Y")
#subsetting for gennerating graphs
subset_data=subset(data,date >="2007-02-01" & date <="2007-02-02")

#plot 3
# preparing Data
subset_data$Datetime<-as.POSIXct(paste(subset_data$Date, subset_data$Time), format="%d/%m/%Y %H:%M:%S")
subset_data$Global_active_power=as.numeric(subset_data$Global_active_power)

#crating plot
with(subset_data,plot(Datetime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))

lines(subset_data$Datetime,subset_data$Sub_metering_2,col="red")

lines(subset_data$Datetime,subset_data$Sub_metering_3,col="blue")

#adding legend
legend("topright",lty=1,lwd=2,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),cex=0.8)
