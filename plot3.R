## Load script that reads the data file
source("./ReadData.R")

## Open png graphing device
png(filename="plot3.png", width=480, height=480)

## Make plots
with(df, plot(Date_Time, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", col="black"))
with(df, lines(Date_Time, Sub_metering_2, col="red"))
with(df, lines(Date_Time, Sub_metering_3, col="blue"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1)
## close graphing device
dev.off()
