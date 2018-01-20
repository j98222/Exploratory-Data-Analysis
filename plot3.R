library("ggplot2")
raw_data <- readRDS("summarySCC_PM25.rds")
baltimore_data <- raw_data[which(raw_data$fips == "24510"),]
vars <- names(baltimore_data) %in% c("Emissions","year","type")
# After aggregate data column Group.1 is the year, 
# column Group.1 is the type and column x is sum of emission
aggr_data <- aggregate(baltimore_data[vars]$Emissions, by=list(baltimore_data$year,baltimore_data$type), FUN = sum)

png(filename='plot3.png', width=480, height=480, units='px')
data_plot <- ggplot(data=aggr_data,aes(Group.1,x))
data_plot <- data_plot + geom_point(aes(color = Group.2), size = 2) 
data_plot <- data_plot + geom_line(aes(group = Group.2, color = Group.2), size = 1)
print(data_plot)
dev.off()