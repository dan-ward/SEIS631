#set working directory
setwd("~/Class/631/Git/SEIS631/Assignment6")

#load the nc.RData file
load('nc.RData')

#summary of the data
summary(nc)

#plot mothers age
plot(nc$mage)

#calculate weight of baby's born to smokers and non-smokers
by(nc$weight,nc$habit,mean)

#calculate inference of weight and smoking/nonsmoking with type = "ht"
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, 
          alternative = "twosided", method = "theoretical")

#calculate inference of weight and smoking/nonsmoking with type = "ci"
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical")


#change the order of reporting to smoker:nonsmoker
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical", 
          order = c("smoker","nonsmoker"))
