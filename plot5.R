raw_data <- readRDS("summarySCC_PM25.rds")
car_data <- raw_data[which(raw_data$fips == "24510" & raw_data$type=="ON-ROAD"),]
aggr_data <- aggregate(Emissions ~ year, data = car_data, FUN = sum)

png(filename='plot5.png', width=480, height=480, units='px')
plot (aggr_data$year,aggr_data$Emissions,type = "o", lty=2, xlab="Years", ylab ="Totle Emissions", 
      main ="Motor Vehicle Emissions in Baltimore City")
dev.off()