
#from upload txt file in github https, only work with RCurl package
library(RCurl)
URL <- "https://raw.githubusercontent.com/caipine/ExData_Plotting1/master/household_power_consumption.txt"
x11 <- getURL(URL) 
## Or 
## x <- getURL(URL, ssl.verifypeer = FALSE)
w1 <- read.csv(textConnection(x11), sep = ";")



# from orignal ZIP file, only works in linux 
list.files()
file_exist <- file.exists("exdata%2Fdata%2Fhousehold_power_consumption.zip")
if(!file_exist){
        dir <- paste("cd", getwd(), sep=" ")
        system(dir)
        system("wget https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip") 
}
w1<- read.csv(unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt"), , sep = ";")
head(w1)

if(!file_exist) {
system("rm exdata%2Fdata%2Fhousehold_power_consumption.zip")
}
list.files()





w1 <- w1[w1$Date %in% as.factor(c("1/2/2007","2/2/2007")),]
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white",)
with(w1, hist(as.numeric(Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
dev.off()
