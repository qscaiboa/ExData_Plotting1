w1 <- read.csv("household_power_consumption.txt", sep = ";")

w1 <- w1[w1$Date %in% as.factor(c("1/2/2007","2/2/2007")),]
#call data from the dates 2007-02-01 and 2007-02-02

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white",)
#set a png file
with(w1, hist(as.numeric(Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
dev.off()
