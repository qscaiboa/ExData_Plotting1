w1 <- read.csv("household_power_consumption.txt", sep = ";")
w1 <- w1[w1$Date %in% as.factor(c("1/2/2007","2/2/2007")),]
datetime <- paste ( as.character(w1$Date), as.character(w1$Time))
time <-  strptime (datetime, "%d/%m/%Y %H:%M:%OS")
png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white",)
plot(time, as.numeric(as.character(w1$Global_active_power)), type = "l", xlab = NA, ylab = "Global Active Power (kilowatts)" )
dev.off()
