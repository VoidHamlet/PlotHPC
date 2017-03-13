# Run HPC.R first.

# Map, draw and save Plot 4 to .PNG:

par(mfrow = c(2, 2))
with(dfHPC, {
        plot(Global_active_power~Timestamp, type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")
        plot(Voltage~Timestamp, type= "l", ylab = "Voltage (volt)", xlab = "")
        plot(Sub_metering_1~Timestamp, type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")
        lines(Sub_metering_2~Timestamp, col = 'Red')
        lines(Sub_metering_3~Timestamp, col = 'Blue')
        legend("topright", col = c("black", "red", "blue"), lty = c(1, 1), lwd = c(1, 1), bty = "n", c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "))
        plot(Global_reactive_power~Timestamp, type = "l", ylab = "Global Rective Power (kilowatts)", xlab = "")
})

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()

# Done!