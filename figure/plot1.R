# read data

data<-read.csv("C:/Users/shbhadauria/Desktop/coursera/exploratory analysis/household_power_consumption.txt", sep=";")
#converting date field to date format
date<-as.Date(data$Date, format= "%d/%m/%Y")
#subsetting for gennerating graphs
subset_data=subset(data,date >="2007-02-01" & date <="2007-02-02")

#plot 1
library(dplyr)
subset_data$Global_active_power<-as.numeric(subset_data$Global_active_power)

# Create the bar plot.
library(datasets)
hist(subset_data$Global_active_power,col="Red", xlab="Global Active Power(Kilowatts)", main= "Global Active Power")
                                                                                                          
