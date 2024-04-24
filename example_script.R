#### R on Quest Script example
# Haley Carter
# Research Computing and Data Services
# Northwestern University IT
# April 24th 2024

# load required libraries
library(dplyr)
library(tidyr)
library(readr)

# file paths and working directory, must be in directory with data
prefix <- getwd()
datafile <- "shortPartitionData.csv"
filepath <- paste(prefix, datafile, sep = "/")

# read in data
data <- read_csv(filepath)

# create and save new data frame
data_summary <- data %>% 
  group_by(ST) %>% 
  summarise(count = n())

jobStatement <- paste("There were", data_summary[data_summary$ST == "R", 'count'],
                      "jobs running and",
                      data_summary[data_summary$ST == "PD", 'count'],
                      "jobs pending at the time of sampling.", sep = " ")
pend
runningJobs

# create and save image
status_plot <- ggplot()



