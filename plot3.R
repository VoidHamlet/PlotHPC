# Run HPC.R first.

# Draw and save Plot 3 to .PNG:

plot(dfHPC$Timestamp, dfHPC$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dfHPC$Timestamp, dfHPC$Sub_metering_2, col = "red")
lines(dfHPC$Timestamp, dfHPC$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "), lty = c(1, 1), lwd = c(1, 1))

dev.copy(png, "Plot3.png", width=480, height=480)
dev.off()

# Done!