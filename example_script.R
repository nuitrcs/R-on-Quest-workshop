#### R on Quest Script example
# Haley Carter
# Research Computing and Data Services
# Northwestern University IT
# April 24th 2024

# load required libraries
library(dplyr)
library(readr)
library(ggplot2)

# file paths and working directory, must be in directory with data
prefix <- getwd()
datafile <- "shortPartitionData.csv"
filepath <- paste(prefix, datafile, sep = "/")
plotfile <- "shortPartitionGraph.png"
plotpath <- paste(prefix, plotfile, sep = "/")

# read in data
data <- read_csv(filepath)

# summarize data
data_summary <- data %>% 
  group_by(ST) %>% 
  summarise(count = n())

# print number of running and pending jobs to command line
jobStatement <- paste("There were", data_summary[data_summary$ST == "R", 'count'],
                      "jobs running and",
                      data_summary[data_summary$ST == "PD", 'count'],
                      "jobs pending at the time of sampling.", sep = " ")
jobStatement

# create plot of jobs running vs pending
status_plot <- ggplot(data_summary, aes(ST, count))+
  geom_bar()

# save plot image
ggsave(filename = plotpath, plot = status_plot)

