#set working directory
setwd("~/Class/631/Git/SEIS631/Assignment5")

#load data (ames.RData) dataset
load('ames.RData')

#create a population variable to hold population values
population<-ames$Gr.Liv.Area

#create a sample of the population of size 60
samp<-sample(population,60)

#create sample mean
sample_mean<-mean(samp)

#Calculate the confidence interval
se<-sd(samp)/sqrt(60)
lower<-sample_mean-1.96*se
upper<-sample_mean+1.96*se
c(lower,upper)

#calculate the mean of the population
mean(population)

#create empty vectors to save the means and standard deviations
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

#create a loop to calcualte the means and standard deviations of 50 random samples
for(i in 1:50){
  samp <- sample(population, n)           # obtain a sample of size n = 60 from the population
  samp_mean[i] <- mean(samp)           # save sample mean in ith element of samp_mean
  samp_sd[i] <- sd(samp)                     # save sample sd in ith element of samp_sd
}

#create the confidence intervals for 95% confidence
lower <- samp_mean - 1.96 * samp_sd/sqrt(n)
upper <- samp_mean + 1.96 * samp_sd/sqrt(n)

#display the first confidence interval
c(lower[1],upper[1])

#plot the upper and lower confidence intervals against the mean of the population
plot_ci(lower, upper, mean(population))

#create the confidence intervals for 99% confidence
lower <- samp_mean - 2.58 * samp_sd/sqrt(n)
upper <- samp_mean + 2.58 * samp_sd/sqrt(n)

#display the first confidence interval 99%
c(lower[1],upper[1])

#plot the upper and lower confidence intervals against the mean of the population 99%
plot_ci(lower, upper, mean(population))
