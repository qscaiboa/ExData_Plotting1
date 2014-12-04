w1 <- read.csv("household_power_consumption.txt", sep = ";")
w1 <- w1[w1$Date %in% as.factor(c("1/2/2007","2/2/2007")),]
datetime <- paste ( as.character(w1$Date), as.character(w1$Time))
time <-  strptime (datetime, "%d/%m/%Y %H:%M:%OS")

png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white",)
par(mfrow = c(2,2))
with (w1, plot(time, as.numeric(as.character(Global_active_power)), type = "l", xlab = NA, ylab = "Global Active Power" ) )
with(w1, plot(time, as.numeric(as.character(Voltage)), type = "l", xlab = "datatime", ylab = "Voltage"))
with(w1, plot(time, as.numeric(as.character(Sub_metering_1)), type = "l", xlab = NA, ylab = "Energy sub metering" ))
  lines (time, as.numeric(as.character(w1$Sub_metering_2)), type = "l",  col = "red" )
  lines (time, as.numeric(as.character(w1$Sub_metering_3)), type = "l",  col = "blue" )
  legend ("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n", col=c("black","red","blue"), lty = 1)
with(w1, plot(time, as.numeric(as.character(Global_reactive_power)), type = "l", xlab = "datatime", ylab = "Global_reactive_power"))
dev.off()

