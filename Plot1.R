#Recreate Plot 1 

library(data.table)


download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "project1_data.zip", method="curl")
project_data <- read.csv(unz("project1_data.zip","household_power_consumption.txt"),sep =";")
project_data.table=data.table(project_data)
hist(project_data.table
     [as.Date(Date, "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02"))][,as.numeric(as.character(Global_active_power))], 
     breaks = seq(0,7.5,l=16), col = "red", xlim=c(0,8), xaxp = c(0,6,3), xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")