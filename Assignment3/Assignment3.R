#Set working directory
setwd("~/St Thomas/SEIS631/Git/Assignment3")

#load data
load("kobe.RData")

#show the top of the data frame
head(kobe)

#display the first nine shots taken
kobe$basket[1:9]

#use calc streak to load kobe's streak
kobe_streak<-calc_streak(kobe$basket)

#plot kobe's streak in a barplot
barplot(table(kobe_streak))

#calculate the IRQ
IQR(kobe_streak)

#calculate the median
median(kobe_streak)

#Generate random outcomes
outcomes<-c("heads","tails")

#create a sample of outcomes
sample(outcomes,size=1,replace=TRUE)

#create a simulation of 100 flips of a fair coin
sim_fair_coin<-sample(outcomes,size=100, replace=TRUE)

#display results
sim_fair_coin

#display in table format
table(sim_fair_coin)

#create an unfair coin with a 20%/80% probability
sim_unfair_coin<-sample(outcomes,size=100,replace=TRUE,prob=c(.2,.8))

#display results
sim_unfair_coin

#display in table format
table(sim_unfair_coin)

#simulate an independent shooter
outcomes<-c("H","M")

#create a simulation basket vector
sim_basket<-sample(outcomes,size=133,replace=TRUE,prob=c(.45,.55))

#display results
sim_basket

#display in a table
table(sim_basket)

#show kobe's results and the simulation results
kobe$basket
sim_basket

#calculate the streak of the simulated shooter
sim_streak<-calc_streak(sim_basket)

#compare kobe and sim_basket
table(sim_streak)
table(kobe_streak)
