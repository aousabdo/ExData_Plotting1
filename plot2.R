## Load script that reads the data file
source("./ReadData.R")

## Open png graphing device
png(filename="plot2.png", width=480, height=480)

## Make plot
with(df, plot(Date_Time, Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l"))

## close graphing device
dev.off()
