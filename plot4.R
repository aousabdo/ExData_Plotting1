## Load script that reads the data file
source("./ReadData.R")

## Open png graphing device
png(filename="plot4.png", width=480, height=480)

## Make plot functions to call later

## First-subplot image
first_subplot <- function(){
  with(df, plot(Date_Time, Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l"))
}

## Second subplot image
second_subplot <- function(){
  with(df, plot(Date_Time, Voltage, xlab="datetime", ylab="Voltage", type="l"))
}

## third subplot
third_subplot <- function(){
  with(df, plot(Date_Time, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", col="black"))
  with(df, lines(Date_Time, Sub_metering_2, col="red"))
  with(df, lines(Date_Time, Sub_metering_3, col="blue"))
  
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n",
         col=c("black", "red", "blue"), lty=1)
}

## fourth subplot image
fourth_subplot <- function(){
  with(df, plot(Date_Time, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l"))
}

## create the actual plot
## create tiles
par(mfrow=c(2,2), mar=c(4,4,1,1))
first_subplot()
second_subplot()
third_subplot()
fourth_subplot()

## close graphing device
dev.off()
