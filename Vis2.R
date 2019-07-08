# Visualization #2

library(ggplot2)
library(tidyverse)

# rtweet package: extracts tweets

full_trains <- read_csv(file.choose())
View(full_trains)
names(full_trains) #journey_time_avg

full_trains %>% 
  ggplot(aes(x = journey_time_avg)) +
  geom_histogram(bins = 20, alpha = .2) +
  geom_histogram(data = subset(full_trains, service == "National"), bins = 20, alpha = .4, fill = "red") +
  labs(x = "Journey Time (mins)", y = "Number of Instances", 
       subtitle = "Histogram of Average Journey Time for trains on the SNCF Network")
