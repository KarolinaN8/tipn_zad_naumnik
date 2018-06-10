
library(tidyverse)
library(dplyr)



#Zad 5-1

library(readr)
movies <- read_csv("D:/informatyka/Folder Git/drugi folder/tipn_zad_goral/movies.csv")
View(movies)



#Zad 5-2

filter(movies, year == 2005, Comedy == 1)
  


#Zad 5-3

movies %>% select(title, year, budget) %>% arrange(desc(budget))



#Zad 5-4

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  arrange(desc(rating))



#Zad 5-5

dramaty <- filter(movies, Drama == 1)
arrange(dramaty, desc(length))



#Zad 5-6

mpaa_rating <- group_by(movies, mpaa) %>%
  summarise (srednia = mean(rating), odchylenie = mad(rating))
