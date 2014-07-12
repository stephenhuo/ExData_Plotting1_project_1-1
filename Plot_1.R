## The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
##
## Date: Date in format dd/mm/yyyy
## Time: time in format hh:mm:ss
## Global_active_power: household global minute-averaged active power (in kilowatt)
## Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
## Voltage: minute-averaged voltage (in volt)
## Global_intensity: household global minute-averaged current intensity (in ampere)
## Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
## It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
## Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
## It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
## Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
## It corresponds to an electric water-heater and an air-conditioner.
## Loading the data
## When loading the dataset into R, please consider the following:
##  
## The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).
##
## We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
##
## You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.
##
## Note that in this dataset missing values are coded as ?.
setwd("C:/Users/cruzval/Desktop/coursera/curso_4")
## Read data and generate a main data frame
main_data <- read.csv ("C:/Users/cruzval/Desktop/coursera/curso_4/household_power_consumption.txt", sep = ";", na.strings="?")
main_data <- as.data.frame(main_data)
## generate sub_set considering the frame time 2007-02-01 to 2007-02-02
sub_set <- subset(main_data, as.Date(Date,format="%d/%m/%Y") == as.Date("01/02/2007", format="%d/%m/%Y") | 
                    as.Date(Date,format="%d/%m/%Y") == as.Date("02/02/2007",format="%d/%m/%Y"))

## First task histogram
png(file="plot1.png",width=480,height=480,bg=NA,units="px")
hist(as.numeric(sub_set$Global_active_power), 
     col="red", main="Global Active Power", xlab="Global Active Power in (kilowatts)", 
     ylim=c(0,1200))
dev.off()



