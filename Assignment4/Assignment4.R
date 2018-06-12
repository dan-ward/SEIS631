#set working directory
setwd("~/Class/631/Git/SEIS631/Assignment4")

#load the data file
load("ames.RData")

#create an area variable and price variable
area<-ames$Gr.Liv.Area
price<-ames$SalePrice

#generate summary statistics on area
summary(area)

#generate an area histogram
hist(area)

#generate a sample of 50 from the living area variable
samp0<-sample(area,50)

#generate a second sample of 50 from the living area variable
samp1<-sample(area,50)

#compare the samples to the population
summary(area)
summary(samp0)
summary(samp1)

hist(area)
hist(samp0)
hist(samp1)

#calculate the mean of sample 1
mean(samp1)

#Generate 5000 samples and compute the sample mean of each
sample_means50 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
}
hist(sample_means50)

#decrease the break size
hist(sample_means50, breaks = 25)

#calculate the mean of sample_means50
mean(sample_means50)

#display the summary of sample_means50
summary(sample_means50)
