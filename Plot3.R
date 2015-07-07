#Reecreate Plot 3

library(data.table)


download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "project1_data.zip", method="curl")
project_data <- read.csv(unz("project1_data.zip","household_power_consumption.txt"),sep =";")
project_data.table=data.table(project_data)

plot(project_data.table[as.Date(Date, "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02"))]
     [,as.numeric(as.character(Sub_metering_1))], type = "l", axes=F, ylim=c(0,40), xlab = "", ylab = "Energy sub metering")
lines(project_data.table[as.Date(Date, "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02"))]
      [,as.numeric(as.character(Sub_metering_2))], col="red")
lines(project_data.table[as.Date(Date, "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02"))]
      [,as.numeric(as.character(Sub_metering_3))], col="blue")
axis(1,c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, c(0,10,20,30))
box()
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)