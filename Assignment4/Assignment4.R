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

#create a sample mean of 10 and a sample mean of 100
sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp)
}

#plot the three sample sizes on top of each other
par(mfrow = c(3, 1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

#generate a sample of 50 from the price variable
samp0_price<-sample(price,50)

#display the mean of samp0_price
mean(samp0_price)

#Generate 5000 samples of 50 and compute the sample mean of each for price
sample_means50 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(price, 50)
  sample_means50[i] <- mean(samp)
}

#reset plot area
par(mfrow=c(1,1))

#plot a histogram
hist(sample_means50)

#Generate 5000 samples of 50 and compute the sample mean of each for price
sample_means150 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(price, 50)
  sample_means150[i] <- mean(samp)
}

#generate histograms for  sample_means50, and sample_means150
par(mfrow = c(2, 1))
xlimits = range(sample_means50)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means150, breaks = 20, xlim = xlimits)

#generate histograms for  sample_means50, and sample_means150, and price
par(mfrow = c(3, 1))
xlimits = range(price)
hist(sample_means50, breaks = 40, xlim = xlimits)
hist(sample_means150, breaks = 40, xlim = xlimits)
hist(price, breaks = 40, xlim = xlimits)


