source("loaddata.R")

createPlot3 <- function (plotdata=NULL) {
  
  if (is.null(plotdata)) plotdata <- loaddata()
  
  #open png device with a 480 x 480 size
  png("plot3.png", width=480, height=480)
  
  #create main plot with sub_metering1
  plot(plotdata$Time, plotdata$Sub_metering_1, type="l", col="black", 
       xlab="", ylab="Energy sub metering") 
  #add lines for sub_metering2
  lines(plotdata$Time, plotdata$Sub_metering_2, col="red")
  #add lines for sub_metering3
  lines(plotdata$Time, plotdata$Sub_metering_3, col="blue")
  #add legend
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1)
  
  #close device and save
  dev.off()
  
}
  