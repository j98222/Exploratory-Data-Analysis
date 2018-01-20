raw_data <- readRDS("summarySCC_PM25.rds")
labels <- readRDS("Source_Classification_Code.rds")
labels <- labels[grep('coal', labels$Short.Name,ignore.case=TRUE),]
coal_data <- raw_data[raw_data$SCC %in% labels$SCC,]
aggr_data <- aggregate(Emissions ~ year, data = coal_data, FUN = sum)
png(filename='plot4.png', width=480, height=480, units='px')
plot (aggr_data$year,aggr_data$Emissions,type = "o", lty=2, xlab="Years", ylab ="Totle Emissions", 
      main ="Coal Combustion-related Sources Emissions")
dev.off()