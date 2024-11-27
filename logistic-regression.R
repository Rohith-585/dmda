claimants <- read.csv("C:/Users/User/Desktop/EXCELR/logistic regression/claimants.csv")
sum(is.na(claimants))
claimants <- na.omit(claimants)

logit <- glm(ATTORNEY ~ factor(CLMSEX) + factor(CLMINSUR) + factor(SEATBELT) + CLMAGE + LOSS, family = "binomial", data = claimants)
summary(logit)

prob = predict(logit, type = c("response"), claimants)


confusion <- table(prob > 0.5, claimants$ATTORNEY)


Accuracy <- sum(diag(confusion)) / sum(confusion)


install.packages("ROCR")
install.packages("pROC")
library(ROCR)
library(pROC)

rocrpred <- prediction(prob, claimants$ATTORNEY)
rocrperf <- performance(rocrpred, 'tpr', 'fpr')
