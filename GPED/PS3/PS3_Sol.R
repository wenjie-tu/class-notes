# set working directory
setwd('F:/UZH/21Fall/Global-Poverty/PS/PS3')

# set environment language
Sys.setenv(lang = "us_en")

# clear working directory
rm(list=ls())

library(stargazer)
library(AER) # iv regression

# read in data
dta <- read.csv("./Data_IV.csv")

table(dta[dta$assignment==1, ]$treated)
table(dta[dta$assignment==0, ]$treated)

# OLS
model1 <- lm(y ~ treated, data=dta)

# reduced form
model2 <- lm(y ~ assignment, data=dta)

# iv regression
model3 <- ivreg(y ~ treated | assignment, data=dta)

# first stage
model4 <- lm(treated ~ assignment, data=dta)

# export regression results in a table format
stargazer(model1, model2, model3, model4, title="IV Regression", header=F, 
          keep.stat = c("n", "rsq"), no.space=T,   
          column.labels=c("OLS", "IIT", "LATE", "1st Stage"), 
          model.names=F)

# intent-to-treat by gender
model5 <- lm(y ~ assignment, data=dta, subset=dta$sex==0)
model6 <- lm(y ~ assignment, data=dta, subset=dta$sex==1)

# iv regression by gender
model7 <- ivreg(y ~ treated | assignment, data=dta, subset=dta$sex==0)
model8 <- ivreg(y ~ treated | assignment, data=dta, subset=dta$sex==1)

# iv regression with interaction
model9 <- ivreg(y ~ treated * sex | assignment * sex, data=dta)

# export regression results in a table format
stargazer(model5, model6, model7, model8, model9, 
          title="IV Regression", header=F, model.names=T,   
          keep.stat = c("n", "rsq"), no.space=T, 
          column.labels=c("sex=0", "sex=1", "sex=0", "sex=1", "both"))