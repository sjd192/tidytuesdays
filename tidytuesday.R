# get the data 
attendance <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-04/attendance.csv')

#download packages
library(tidyverse)
library(dplyr)

#manipulate the data
df.attendance <- filter(attendance, team=="Kansas City")

#plot the data
ggplot(data = df.attendance) +
  +     geom_line(mapping = aes(x = year, y = total)) +
  +     labs(title = "Kansas City Chiefs Total Attendance 2000-2020", x = "Year", y = "Total Attencance") +
  +     theme_minimal()

