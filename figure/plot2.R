# read data

data<-read.csv("C:/Users/shbhadauria/Desktop/coursera/exploratory analysis/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)
#converting date field to date format
date<-as.Date(data$Date, format= "%d/%m/%Y")
#subsetting for gennerating graphs
subset_data=subset(data,date >="2007-02-01" & date <="2007-02-02")

#plot 2
#preparing Data for generation of graph
subset_data$Datetime<-as.POSIXct(paste(subset_data$Date, subset_data$Time), format="%d/%m/%Y %H:%M:%S")
subset_data$Global_active_power=as.numeric(subset_data$Global_active_power)

# Create the plot.
library(datasets)
with(subset_data,plot(Datetime,Global_active_power,type="l",xlab="", ylab="Global Active Power(Kilowatts)"))

