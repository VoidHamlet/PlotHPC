# Read data first. This assumes the data is in your working directory.
# We know NA values are marked by "?" and values are separated by ";".

dfHPC <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# On running head(dfHPC) then tail(dfHPC), our range is:
#         Date     	Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
# 1       16/12/2006 17:24:00               4.216                 0.418 234.840           18.400          0.000          1.000             17
# 2       16/12/2006 17:25:00               5.360                 0.436 233.630           23.000          0.000          1.000             16
# 3       16/12/2006 17:26:00               5.374                 0.498 233.290           23.000          0.000          2.000             17
# (...)
# 2075257 26/11/2010 21:00:00               0.938                 0.000 239.820            3.800          0.000          0.000              0
# 2075258 26/11/2010 21:01:00               0.934                 0.000 239.700            3.800          0.000          0.000              0
# 2075259 26/11/2010 21:02:00               0.932                 0.000 239.550            3.800          0.000          0.000              0

# We have not too few NA values:
# sum(is.na(dfHPC))
# [1] 181853

# Remove NA values:

dfHPC <- dfHPC[complete.cases(dfHPC), ]

# Converting "Date" to data type: Date:

dfHPC$Date <- as.Date(dfHPC$Date, "%d/%m/%Y")

# Subset data set to get data from 2007 Feb 1st to 2nd:

dfHPC <- subset(dfHPC, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

# Pirouet into combining Date & Time into one column, Timestamp. If we are to evoke days of the week, we need POSIXct here:

dfHPC <- transform(dfHPC, Timestamp = as.POSIXct(paste(Date, Time)))

# Done cleaning data!
