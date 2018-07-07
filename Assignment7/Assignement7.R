#set working directory
setwd("~/Class/631/Git/SEIS631/Assignment7")

#load data
load('atheism.RData')

#view the head of the atheism dataframe
head(atheism)

#create a dataframe with just the respondents from the United States
us12 <- subset(atheism, nationality == "United States" & year == "2012")

#create a dataframe with just the respondents from the United States that are atheists
usatheist <- subset(us12, response=="atheist")

#calculate the % atheist
50/1002

#calculate the 1 sample proportions  
prop.test(table(us12$response)[1], sum(table(us12$response)), correct=F)

#Show the table of response
table(us12$response)

#show table of atheism to identify other countries in the study
table(atheism)

#create dataframe for Japan
japan <- subset(atheism, nationality=="Japan" & year =="2012")

#create dataframe for Japan
spain <- subset(atheism, nationality=="Spain" & year =="2012")

#calculate the 1 sample proportions  
prop.test(table(japan$response)[1], sum(table(japan$response)), correct=F)
prop.test(table(spain$response)[1], sum(table(spain$response)), correct=F)

#plot ME with p increasing from 0 to 1 in .01 increments
n <- 1000
p <- seq(0, 1, 0.01)
me <- 2 * sqrt(p * (1 - p)/n)
plot(me ~ p)

#plot a histogram for atheist proportion of .1.  Sample size of 1040 from 5000 samples
p <- 0.1
n <- 1040
p_hats0 <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats0[i] <- sum(samp == "atheist")/n
}

p <- 0.1
n <- 400
p_hats1 <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats1[i] <- sum(samp == "atheist")/n
}

p <- 0.02
n <- 1040
p_hats2 <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats2[i] <- sum(samp == "atheist")/n
}

p <- 0.02
n <- 400
p_hats3 <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats3[i] <- sum(samp == "atheist")/n
}

par(mfrow = c(2,2))
hist(p_hats0, main = "p = 0.1, n = 1040", xlim = c(0, 0.18))
hist(p_hats1, main = "p = 0.1, n = 400", xlim = c(0, 0.18))
hist(p_hats2, main = "p = 0.02, n = 1040", xlim = c(0, 0.18))
hist(p_hats3, main = "p = 0.02, n = 400", xlim = c(0, 0.18))

#display the summary for each of the new distributions
summary(p_hats0)
summary(p_hats1)
summary(p_hats2)
summary(p_hats3)




