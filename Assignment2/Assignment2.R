#SEIS 631
#Dan Ward
#Assignment 2

#load data
load("cdc.RData")

#display the names of the variables
names(cdc)

#display the first few entries of the dataset
head(cdc)

#display the last few entries
tail(cdc)

#display the numerical summary
summary(cdc$weight)

#compute the interquartile range for the respondents' weight
190-140

#calculate mean weight
mean(cdc$weight)

#calculate median weight
median(cdc$weight)

#calculate variance of weight
var(cdc$weight)

#display a table of the respondents' that smoked 100 cigarettes
table(cdc$smoke100)

#display relative frequency distribution that smoked 100 cigarettes
table(cdc$smoke100)/20000

#create a bar plot of the smoke100 variable
barplot(table(cdc$smoke100))

#break the nested commands into two statements 
smoke = table(cdc$smoke100)
barplot(smoke)

#create a numerical summary for gender
table(cdc$gender)

#create the relative frequency distribution of genhlth
table(cdc$genhlth)/20000

#tabulate which participants have smoked across each gender
gender_smokers = table(cdc$gender,cdc$smoke100)

#create a mosaicplot of the gender_smoker data
mosaicplot(gender_smokers)

#display the dimension of the cdc data
dim(cdc)

#display the 6th response of the 567th observation
cdc[567,6]

#display the names
names(cdc)

#display the weights for the first 10 respondents
cdc[1:10,6]

#all data for the first 10 respondents
cdc[1:10,]

#display weights for all respondents
cdc[,6]

#display weights using the variable name
cdc$weight

#display the weight of respondent 567
cdc$weight[567]

#display the weight of the first 10 respondents
cdc$weight[1:10]

#display if male
cdc$gender=="m"

#display if age > 30
cdc$age>30

#get the subset of males
mdata=subset(cdc,cdc$gender=="m")

#display the top values of mdata
head(mdata)

#get the subset of males over 30
m_and_over30 = subset(cdc,cdc$gender=="m" & cdc$age > 30)

#get the subset of males or over 30 respondents
m_or_over30 = subset(cdc,cdc$gender=="m" | cdc$age > 30)

#Create a new object that contains all observations of respondents under the age of 23 
#that have smoked at least 100 cigarettes in their lifetime
under23_and_smoked100 = subset(cdc,cdc$age<23 & cdc$smoke100==1)

#create a boxplot for height
boxplot(cdc$height)

#display summary of height
summary(cdc$height)

#create a boxplot to compare the height of men vs women
boxplot(cdc$height~cdc$gender)

#create a bmi vector
bmi=(cdc$weight/cdc$height^2)*703

#create a boxplot of bmi vs general health
boxplot(bmi~cdc$genhlth)

#create a boxplot of bmi vs exercise
boxplot(bmi~cdc$exerany)

#create a histogram of age of the respondents
hist(cdc$age)

#create a histogram for bmi
hist(bmi)

#create a histogram for bmi with 50 bins
hist(bmi,breaks=50)

#create a plot for weight and desired weight
plot(cdc$weight,cdc$wtdesire)
