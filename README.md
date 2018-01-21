# Exploratory Data Analysis
## Course Project 2
### GOAL
Explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008.

### DATA
The data source is from National Emissions Inventory (NEI). For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. 
- summarySCC_PM25.rds file  
This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

- Source_Classification_Code.rds file
This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source.

### REQUIREMENT
This assignment requires ggplotw2 and reshape2 libraries to be able to run appropriately

### FOCUS
This Assignment is to address the following questions and tasks
1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
