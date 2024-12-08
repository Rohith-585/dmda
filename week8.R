x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <- mean(x)
print(result.mean)

result.mean <- mean(x, trim = 0.3)
print(result.mean)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.mean <- mean(x)
print(result.mean)

result.mean <- mean(x, na.rm = TRUE)
print(result.mean)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
median.result <- median(x)
print(median.result)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <- getmode(x)
print(result)

charv <- c("o","it","the","it","it")
result <- getmode(charv)
print(result)
