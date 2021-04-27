#data <- WA_Fn.UseC_.Telco.Customer.Churn

num = 1
for (i in data$TotalCharges){
  
  if(is.na(i)){
    data$TotalCharges[num] <- 0
  }
  num = num + 1
}
