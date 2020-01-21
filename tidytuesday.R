#load packages
library(tidyverse)
library(dplyr)
#download the data
passwords <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-14/passwords.csv') 
#clean data, omit empty rows
password <- na.omit(passwords)
#bar plot
ggplot(data = password) +
       geom_bar(mapping = aes(x = category, fill = category)) +
       labs(title = "Popular Password Data") +
       theme_light() +
       coord_flip()