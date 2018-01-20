raw_data <- readRDS("summarySCC_PM25.rds")

sum_data <- aggregate(Emissions ~ year, data = raw_data, FUN = sum)

png(filename='plot1.png', width=480, height=480, units='px')
plot (sum_data$year,sum_data$Emissions,type = "o", lty=2, xlab="Years", ylab ="Totle Emissions")
dev.off()