
#In this dataset,we will work with the advertising data of a marketing agency that predicts ifa particular user will click on advertisement.


#Q-1Read the data

df=read.csv("advertising_classification.csv")


#Q-2 Print first and last 10 rows
head(df,10)
tail(df,10)

#Q-3 Find number of rows and column
ncol(df)
nrow(df)

#Q-4 Print summary of dataset

summary(df)

#Q-5Find null values if any

colSums(is.na(df))

#Q-6 Print column names
colnames(df)
library(plotrix)
#Q-7 How many click on Ad or not and show in pie chart

a= table(df$Clicked.on.Ad)
pct=round(a/sum(a)*100)
z =c("Not survived","Survived")
lbs =paste(z,":",pct,"%")
pie(a,labels=lbs)

# Q-8 Find SD of daily internet usage
f=df[10:20,4]
sd(f)
#Q-9 Find Average area wise Income
m =df$Area.Income
mean(m)
#Q-10 Plot histogram showing daily Internet usage
k=df$Daily.Internet.Usage
library(ggplot2)
hist(k)
#Q-11 Find maximum and minimum time spent on site & daily internet usage
max(k)
min(k)
h=df$Daily.Time.Spent.on.Site
min(h)
max(h)

#Conclusion

#There are 50 % of total people clicked on Ad.
# Maximum & Minimum Time spent on site is 91.43 & 32.6
#Maximum & Minimum daily internet usage is 269.96 & 104.78



