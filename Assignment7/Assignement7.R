#set working directory
setwd("~/Class/631/Git/SEIS631/Assignment7")

#load data
load('atheism.RData')

#view the head of the atheism dataframe
head(atheism)

#create a dataframe with just the respondents from the United States
us12 <- subset(atheism, nationality == "United States" & year == "2012")

