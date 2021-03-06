# set working directory
setwd("~/Class/631/Git/SEIS631/Assignment8")

#load data
load('mlb11.RData')

#Display head of mlb11
head(mlb11)

#plot runs and at bats
plot(mlb11$runs ~ mlb11$at_bats)

#calculate the correlation coefficient
cor(mlb11$runs, mlb11$at_bats)

#plot runs and at bats with x and y labels
plot_ss(x = mlb11$at_bats, y = mlb11$runs)

#plot runs and at bats with x and y labels and show squares
plot_ss(x = mlb11$at_bats, y = mlb11$runs, showSquares = TRUE)

#create the linear model for runs and at bats
m1 <- lm(runs ~ at_bats, data = mlb11)

#display the summary of m1
summary(m1)

#create the linear model for runs and homeruns
m2 <- lm(runs ~ homeruns, data = mlb11)

#display the summary of m1
summary(m2)

#plot a scatterplot with the least squares line laid on top
plot(mlb11$runs ~ mlb11$at_bats)
abline(m1, col='red')

#plot residuals and at_bats
plot(m1$residuals ~ mlb11$at_bats)
abline(h = 0, lty = 3) # adds a horizontal dashed line at y = 0

#Check histogram
hist(m1$residuals)

qqnorm(m1$residuals)
qqline(m1$residuals) # adds diagonal line to the normal prob plot

