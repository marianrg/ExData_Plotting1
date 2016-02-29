source("loaddata.R")

createPlot4 <- function (plotdata=NULL) {
  
  if (is.null(plotdata)) plotdata <- loaddata()
  
  #open png device with a 480 x 480 size
  png("plot4.png", width=480, height=480)
  
  #create frame
  par(mfrow=c(2,2))
  
  #plot 1
  plot(plotdata$Time, plotdata$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
  
  #plot 2
  plot(plotdata$Time, plotdata$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  #plot 3
  #create main plot with sub_metering1
  plot(plotdata$Time, plotdata$Sub_metering_1, type="l", col="black", 
       xlab="", ylab="Energy sub metering") 
  #add lines for sub_metering2
  lines(plotdata$Time, plotdata$Sub_metering_2, col="red")
  #add lines for sub_metering3
  lines(plotdata$Time, plotdata$Sub_metering_3, col="blue")
  #add legend
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1)
  
  #plot 4
  plot(plotdata$Time, plotdata$Global_reactive_power, type="n",xlab="datetime", ylab="Global_reactive_power")
  lines(plotdata$Time, plotdata$Global_reactive_power)
  
  #close device and save
  dev.off()
  
}