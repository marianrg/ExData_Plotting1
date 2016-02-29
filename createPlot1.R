source("loaddata.R")

createPlot1 <- function (plotdata=NULL) {
  
  if (is.null(plotdata)) plotdata <- loaddata()
  
  #open png device with a 480 x 480 size
  png("plot1.png", width=480, height=480)
  
  #create histogram
  hist(plotdata$Global_active_power, main="Global Active Power",ylab = "Frequency", xlab = "Global Active Power (kilowatts)",  col="red")

  
  #close device
  dev.off()
}