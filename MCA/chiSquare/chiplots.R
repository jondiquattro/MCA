#to get squre
install.packages("gmodels")
library(gmodels)
data <- WA_Fn.UseC_.Telco.Customer.Churn
intChi <- CrossTable(x = data$PhoneService,y=data$Churn, chisq = TRUE)


#loop through each column
chiList <-list()

#subset
df <-data[-c(1,6,19,20,21)]

num = 1
for (i in colnames(df)){
  chis <- CrossTable(x = df[[i]],y=data$Churn, chisq = TRUE)
  chiList[num] <- chis$chisq$p.value
  num = num +1
}
#You can add the argument ylim=c(a,b) inside the plot() command, where a is the minimum and b is the maximum of your desired y-axis.

plot(c(1:16), chiList, main = "Chi Square P-value compared to Churn",
     xlab = "P-values", ylab = "Cutt off",
     ylim=c(0,1),
     xlim = c(0,20),
     pch = 19, frame = FALSE)
#draw a cut off line
abline(h=.5, col="blue")






CrossTable(x = data$Contract,y=data$Churn, chisq = TRUE)


