
#data <- WA_Fn.UseC_.Telco.Customer.Churn
data$fixedMonthlyCharges <- data$MonthlyCharges

summary(data$MonthlyCharges)

num = 1
for (i in data$fixedMonthlyCharges){
if(i > 70){
  data$fixedMonthlyCharges[num] <- "3rd Qu"
}
if(i <= 70  && i > 35 ){
    data$fixedMonthlyCharges[num] <- "mid"
}
  
if(i <= 35){
  data$fixedMonthlyCharges[num] <- "1st Qu"
}  
  
  num = num + 1
}

data$MonthlyCharges <- as.factor(data$fixedMonthlyCharges)
#drop extra column
data <-data[-c(22)]




