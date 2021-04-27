churn$log_monthly <- log(churn$MonthlyCharges)
churn$exp_monthly <- log(churn$MonthlyCharges)
hist(churn$log_monthly)
hist(churn$MonthlyCharges)


df <- churn[c("MonthlyCharges","Churn")]
predictors <- as.matrix(df)
pairs(predictors)


#clean total charges
num = 1
for (i in churn$TotalCharges){
  if(i == 'NA'){
    print(i)
  }
  num = num +1
}

churn$TotalCharges[is.na(churn$TotalCharges)] <- 0

#predictors
X <- as.matrix(subset(churn, select=c(MonthlyCharges,TotalCharges)))

#Dependent
Y <- as.matrix(subset(churn, select=c(Churn)))


churn_pca <- prcomp(X,scale=TRUE)
print(churn_pca)
summary(churn_pca)

cor(churn$Churn, churn_pca$x[,1])
biplot(churn_pca,col=c("gray","red"))
