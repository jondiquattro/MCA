#to get squre
install.packages("gmodels")
library(gmodels)
CrossTable(x = data$PhoneService,y=data$Churn, chisq = TRUE)



#loop through each column
chiList <-list()

df = data[c("gender", "Partner")] #needs all of the chi values added

num = 1
for (i in colnames(df)){
  chis <- CrossTable(x = df[[i]],y=data$Churn, chisq = TRUE)
  
  chiList[num] <- chis$chisq.corr$p.value
  num = num +1
}


