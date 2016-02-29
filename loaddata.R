
loaddata <- function() {
 
  #read data into table
  mydata <- read.table("~/household_power_consumption.txt", header=TRUE, sep=";",   colClasses=c("character", "character", rep("numeric",7)), na="?")
   
  #convert time and date
  mydata$Time <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")

  mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")
  
  #filter table to dates used in plots
  mydata <- subset(mydata, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))

  
 }