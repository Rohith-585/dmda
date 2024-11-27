x <- c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)
y <- c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)
relationship_model <- lm(y ~ x)
print(relationship_model)
print(summary(relationship_model))
png(file = "linear_regression.png")
plot(y, x, col = "red", main = "Height and Weight Regression", abline(lm(x ~ y)), cex = 1.3, pch = 16,
     xlab = "Weight in Kg", ylab = "Height in cm")
dev.off()