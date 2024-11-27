# χ2-test
library("MASS")
print(str(Cars93))
car_data <- data.frame(Cars93$AirBags, Cars93$Type)
car_data = table(Cars93$AirBags, Cars93$Type)
print(car_data)
print(chisq.test(car_data))


# t-test
x <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3)


# F-test
x <- c(18, 19, 22, 25, 27, 28, 41, 45, 51, 55)
y <- c(14, 15, 15, 17, 18, 22, 25, 25, 27, 34)
print(var.test(x, y))
