# Run HPC.R first.

# Draw and save Plot 1 to .PNG:

hist(dfHPC$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, "plot1.png", width=480, height=480)
dev.off()

# Done!