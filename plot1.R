## Load script that reads the data file
source("./ReadData.R")

## Open png graphing device
png(filename="plot1.png", width=480, height=480)

## Make plot
with(df, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))

## close graphing device
dev.off()
