library("ggplot2")
library("reshape2")
raw_data <- readRDS("summarySCC_PM25.rds")
# work on Baltimore City motor vehicle data
bal_car_data <- raw_data[which(raw_data$fips == "24510" & raw_data$type=="ON-ROAD"),]
bal_aggr_data <- aggregate(Emissions ~ year, data = bal_car_data, FUN = sum)

# work on Los Angeles County motor vehicle data
los_car_data <- raw_data[which(raw_data$fips == "06037" & raw_data$type=="ON-ROAD"),]
los_aggr_data <- aggregate(Emissions ~ year, data = los_car_data, FUN = sum)

# merge both Los Angeles County and Baltimore City motor vehicle data
aggr_data <- merge(bal_aggr_data,los_aggr_data,by="year")
# Rename the columns
names(aggr_data)<-c("year","Baltimore City","Los Angeles County")

# group data by year
restru_data <- melt(aggr_data,id="year")

png(filename='plot6.png', width=480, height=480, units='px')
data_plot <- ggplot(data=restru_data,aes(year,value))
data_plot <- data_plot + xlab("Years")
data_plot <- data_plot + ylab("Totle Emissions")
data_plot <- data_plot + geom_point(aes(color = variable), size = 2) 
data_plot <- data_plot + geom_line(aes(group = variable, color = variable), size = 1)
data_plot <- data_plot + ggtitle("Motor Vehicle Emissions\nin Baltimore City vs in Los Angeles County")
data_plot <- data_plot + theme(plot.title = element_text(hjust = 0.5))
print(data_plot)
dev.off()
