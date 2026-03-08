#Task 1
library(dplyr)
library(tidyverse)
library(ggpubr)

#Task 2
library(readr)
happydata <- read.csv("Data Analyitcs/world happiness score.csv")
View(world_happiness_score)
typeof(happydata)

#Task 5
happydata$Region<-as.factor(happydata$Region)
str(happydata$Region)

#Task 6
mean(happydata$Happiness.Score, na.rm = TRUE) #na.rm removes the missing values from the input
median(happydata$Happiness.Score, na.rm = TRUE)


#Task 7
mean(happydata$Happiness.Score[happydata$Region == "Europe"], na.rm = TRUE)
median(happydata$Happiness.Score[happydata$Region == "Europe"], na.rm = TRUE)


#Task 8
sd(happydata$Happiness.Score, na.rm = TRUE)
var(happydata$Happiness.Score, na.rm = TRUE)
min(happydata$Happiness.Score, na.rm = TRUE)
max(happydata$Happiness.Score, na.rm = TRUE)
range(happydata$Happiness.Score, na.rm = TRUE)
quantile(happydata$Happiness.Score, na.rm = TRUE)

?sapply

#Task 9
sapply(happydata, mean, na.rm = TRUE)
sapply(happydata[sapply(happydata, is.numeric)], sd, na.rm = TRUE)

#Task 10
summary(happydata)

#Task 11
happydata %>% # the R pipes operator: %>% , specifies a chain of actions
  group_by(Region) %>%
  get_summary_stats(Happiness.Score, type="mean_sd") 

# From the grouped results we can compare avg happiness scores 
# and SD across regions. This shows which regions tend to have higher or lower 
# average happiness and which are more or less consistent in their scores.

rm(list = ls())


