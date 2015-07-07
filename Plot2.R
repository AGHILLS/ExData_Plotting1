#Reecreate Plot 2

library(data.table)


download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "project1_data.zip", method="curl")
project_data <- read.csv(unz("project1_data.zip","household_power_consumption.txt"),sep =";")
project_data.table=data.table(project_data)

plot(project_data.table[as.Date(Date, "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02"))]
     [,as.numeric(as.character(Global_active_power))], type = "l", axes=F, ylim=c(0,7.5), xlab = "", 
     ylab = "Global Active Power (kilowatts)")
axis(1,c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()