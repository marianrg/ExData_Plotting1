source("loaddata.R")

createPlot2 <- function (plotdata=NULL) {
  
  if (is.null(plotdata)) plotdata <- loaddata()
  
  #open png device with a 480 x 480 size
  png("plot2.png", width=480, height=480)
  
  #create line plot
  plot(plotdata$Time, plotdata$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
  
  #close device
  dev.off()
  
}