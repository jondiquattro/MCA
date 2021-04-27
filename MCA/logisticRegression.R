
#df = subset(data, select = c(tenure,Contract,Churn))

df <- data
df$customerID <- NULL
df$TotalCharges <- NULL
df$gender <- NULL

intrain<- createDataPartition(df$Churn,p=0.7,list=FALSE)
set.seed(1988)
training <- df[intrain,]
testing <- df[-intrain,]

dim(training) 
dim(testing)


LogModel <- glm(Churn ~ ., family=binomial(link="logit"), data=training)

print(summary(LogModel))


testing$Churn <- as.character(testing$Churn)
testing$Churn[testing$Churn=="No"] <- "0"
testing$Churn[testing$Churn=="Yes"] <- "1"

fitted.results <- predict(LogModel,newdata=testing,type='response')


fitted.results <- ifelse(fitted.results > 0.5,1,0)
misClasificError <- mean(fitted.results != testing$Churn)
print(paste("accuracy", 1- misClasificError))

print("Confusion Matrix");table(fitted.results, testing$Churn)


