#SEIS 631
#Dan Ward
#Assignment 1

#set working directory
setwd("/Users/Home/Documents/St Thomas/SEIS631/Git/Assignment1")

#confirm the working directory is correct
getwd()

#load the data
load("present.RData")

#view the data
View(present)

#display the data in the console screen
present

#display the dimension of the dataset
dim(present)

#display the names of the variables
names(present)

#display the years
present$year

#display the number of boys born
present$boys

#display the number of girls born
present$girls

#plot the x value of year and the y value of girls born
plot(x=present$year, y=present$girls)

#plot the x value of year and the y value of girls born, now as a line graph
plot(x=present$year, y=present$girls,"l")

#plot the x value of year and the y value of girls born, now as a line graph
plot(x=present$year, y=present$boys,"l")

#get help on plot function
?plot

#display the total boys born plus girls born by year
present$boys + present$girls

#add a total variable to the data that is the sum of girls born and boys born per year
present$total <- present$boys + present$girls

#display the total variable
present$total

#plot the year vs total born
plot(x=present$year,y=present$total)

#plot the year vs total born as a line graph
plot(x=present$year,y=present$total,"l")

#plot the year vs total born as a line graph without the x= and y=
plot(present$year,present$total,"l")

#get help with the which.max function
?which.max()

#identify which item in the vector has the max total value
which.max(present$total)

#display the ratio of boys to girls
present$boys/present$girls

#display the proportion of boys born each year
present$boys/(present$boys + present$girls)

#display the proportion of boys born each year using the total variable
present$boys/(present$total)

#plot the year and proportion of boys born
plot(present$year,present$boys/present$total)

#plot the year and proportion of boys born as a line graph
plot(present$year,present$boys/present$total,"l")

#display TRUE when there were more boys born each year than girls
present$boys>present$girls

#display the number of times more boys were born than girls
sum(present$boys>present$girls)

#plot the year vs the ratio of boys to girls
plot(present$year,present$boys/present$girls)

#display the max difference between the boys born and girls born
max(abs(present$boys-present$girls))

#display the absolute value difference each year between boys born and girls born
abs(present$boys-present$girls)

#display the index of the max value of the absolute value of the difference between boys born and girls born
which.max(abs(present$boys-present$girls))

#display the year of the max difference
present$year[which.max(abs(present$boys-present$girls))]

