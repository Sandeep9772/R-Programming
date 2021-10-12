a1 <- c(10, 1, 6, 0.45, 1.25, 1.3, 1.06, 3, 8.18, 1.67, 0.98, 1, 0.45, 5.03, 8, 9, 18, 0.28, 7, 3.97)
b1 <- c(3, 1, 5, 0.5, 1.54, 1.5, 0.8, 2, 0.67, 1.17, 0.51, 0.5, 0.61, 6.7, 4, 7, 19, 0.2, 5, 3.83)
change <- b1-a1
change
mean1 <- mean(change)
mean1
n <- length(change)
n
sd1 <- sd(change)
sd1
c <- sd1/sqrt(n)
c
se <- c
c <- qt(0.975, n-1)
c
CI <- c(mean1+c*se, mean1-c*se)
CI
library("wooldridge")
