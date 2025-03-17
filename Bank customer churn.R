getwd()
Churn<- read.csv("C:/Users/HP/OneDrive/Desktop/MY SQL/BANK_CUSTOMER_CHURNED.csv")
str(Churn)
Churn$gender<- as.factor(Churn$gender)
round(prop.table(table(Churn$churn))*100, digits =  1)
Churn$churn<- factor(Churn$churn, levels = c(0,1),
                     labels = c("Not churned", "Churned"))
summary(Churn)
# Checking Relationship of demographics and churn
library(ggplot2)
ggplot(Churn, aes(x= churn, fill = country))+
  geom_bar(position = "fill")+
  labs(title = "Country ~ Churn", x= "churn", y = "Proportion")+
  theme_gray()

# Credit.score ~ churn
ggplot(Churn, aes(x= churn, y= credit_score, fill = churn))+
  geom_boxplot()+
  labs(title = "Credit ~ Churn", x= "churn", y = "Credit")+
  theme_gray()

library(rsample)
set.seed(123)
churn_split<- initial_split(data = Churn, prop = 0.80, strata = churn)
Trained_data<- training(churn_split)
Testing_data<- testing(churn_split)


#Using Decision tree
library(C50)
D.tree<- C5.0(churn~., data= Trained_data, method= "class", rule = T)
summary(D.tree)

Testing_data$predict<- predict(D.tree, Testing_data, type = "class")

confusion_matrix<-table(Testing_data$churn, Testing_data$predict)
Accuracy<- round(sum(diag(confusion_matrix)/sum(confusion_matrix))*100, digits = 1)
print(Accuracy)




#Using Regression Trees
library(rpart)
library(rpart.plot)
R.tree<- rpart(churn~., data = Trained_data)
summary(R.tree)
rpart.plot(R.tree, type = 2, extra = 101, cex = 0.6)
Test.R<- Testing_data[-12]
Test.R$predict<- predict(R.tree, Test.R, type = "class")
Tree<-table(Test.R$churn, Test.R$predict)

Accuracy.Tree<- round(sum(diag(Tree)/sum(Tree))*100, digits = 1)
print(Accuracy.Tree)


# Preparing for dashboard visualization
Churn$credit_card<- factor(Churn$credit_card, levels = c(0,1),
                                              labels =  c("No Credit card", "Credit card"))
Churn$active_member<- factor(Churn$active_member, levels = c(0,1),
                                                    labels = c("Not active", "Active"))
Churn$gender<- as.factor(Churn$gender)

write.csv(Churn, "Churned.csv")


