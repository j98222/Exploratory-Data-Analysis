raw_data <- readRDS("summarySCC_PM25.rds")
baltimore_data <- raw_data[which(raw_data$fips == "24510"),]
aggr_data <- aggregate(Emissions ~ year, data = baltimore_data, FUN = sum)

png(filename='plot2.png', width=480, height=480, units='px')
plot (aggr_data$year,aggr_data$Emissions,type = "o", lty=2, xlab="Years", ylab ="Totle Emissions", 
      main ="Baltimore City Total Emissions")
dev.off()