w1 <- read.csv("https://github.com/caipine/ExData_Plotting1/blob/master/household_power_consumption.txt", sep = ";")
w1 <- w1[w1$Date %in% as.factor(c("1/2/2007","2/2/2007")),]
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white",)
with(w1, hist(as.numeric(Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
dev.off()
