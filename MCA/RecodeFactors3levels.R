data <- WA_Fn.UseC_.Telco.Customer.Churn

  
data$OnlineSecurity <- as.factor(ifelse(data$OnlineSecurity == "No", "NoOnlineSecurity", 
                                        ifelse(data$OnlineSecurity == "Yes", "YesOnlineSecurity", "NoOnlineSecurity")))

data$MultipleLines <- as.factor(ifelse(data$MultipleLines == "No", "NoMultipleLines", 
                                        ifelse(data$MultipleLines == "Yes", "YesMultipleLines", "NoMultipleLines")))


data$OnlineBackup <- as.factor(ifelse(data$OnlineBackup == "No", "NoOnlineBackup", 
                                       ifelse(data$OnlineBackup == "Yes", "YesOnlineBackup", "NoOnlineBackup")))

data$DeviceProtection <- as.factor(ifelse(data$DeviceProtection == "No", "NoDeviceProtection", 
                                      ifelse(data$DeviceProtection == "Yes", "YesDeviceProtection", "NoDeviceProtection")))

data$TechSupport <- as.factor(ifelse(data$TechSupport == "No", "NoTechSupport", 
                                          ifelse(data$TechSupport == "Yes", "YesTechSupport", "NoTechSupport")))

data$StreamingTV <- as.factor(ifelse(data$StreamingTV == "No", "NoStreamingTV", 
                                     ifelse(data$StreamingTV == "Yes", "YesStreamingTV", "NoStreamingTV")))

data$StreamingMovies <- as.factor(ifelse(data$StreamingMovies == "No", "NoStreamingMovies", 
                                     ifelse(data$StreamingMovies == "Yes", "YesStreamingMovies", "NoStreamingMovies")))



data$InternetService <- as.factor(ifelse(data$InternetService == "No", "NoInternetService", 
                                     ifelse(data$InternetService == "DSL", "DSLInternetService", "FiberOpticInternetService")))


data$SeniorCitizen <- as.factor(ifelse(data$SeniorCitizen == 0, "NoSeniorCitizen", "YesSeniorCitizen"))

data$Partner <- as.factor(ifelse(data$Partner == "No", "NoPartner", "YesPartner"))

data$Dependents <- as.factor(ifelse(data$Dependents == "No", "NoDependents", "YesDependents"))

data$PhoneService <- as.factor(ifelse(data$PhoneService == "No", "NoPhoneService", "YesPhoneService"))                                

data$PaperlessBilling <- as.factor(ifelse(data$PaperlessBilling == "No", "NoPaperlessBilling", "YesPaperlessBilling"))



