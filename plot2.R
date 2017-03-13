# Run HPC.R first.

# Draw and save Plot 2 to .PNG:

plot(dfHPC$Global_active_power~dfHPC$Timestamp, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, "plot2.png", width=480, height=480)
dev.off()

# Done!