#data <- WA_Fn.UseC_.Telco.Customer.Churn
#data$tenure <- WA_Fn.UseC_.Telco.Customer.Churn$tenure

summary(data$tenure)

num = 1
for (i in data$tenure){
  if(i > 70){
    data$tenure[num] <- "long tenure"
  }
  if(i <= 70  && i > 35 ){
    data$tenure[num] <- "average tenure"
  }
  
  if(i <= 35){
    data$tenure[num] <- "short tenure"
  }  
  
  num = num + 1
}

num = 1
for (i in data$tenure){
  if(i > 60){
    data$tenure[num] <- ">60"
  }
  if(i <= 60  && i > 48 ){
    data$tenure[num] <- "48 -60"
  }
  
  if(i <= 48 && i >24){
    data$tenure[num] <- "24-48"
  }  
  if(i <= 24){
    data$tenure[num] <- "0-24"
  }
  num = num + 1
}




data$tenure <- as.factor(data$tenure)
#drop extra column
data <-data[-c(4)]

sum <- summary(data$tenure)
sum
plot(sum)
