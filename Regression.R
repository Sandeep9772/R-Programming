library(wooldridge)
data("ceosal1")
view(ceosal1)
cov <- cov(ceosal1$roe, ceosal1$salary)
var <- var(ceosal1$roe)
B1 <- cov/var
B0 <- mean(ceosal1$salary)-B1*mean(ceosal1$roe)
B0
CEOSAL <- lm(ceosal1$salary~ceosal1$roe)
CEOSAL
plot(ceosal1$roe, ceosal1$salary, ylim=c(0,4000))
abline(CEOSAL)
View(wage1)
CEO <- lm(wage1$wage~wage1$educ)
CEO
plot(wage1$educ, wage1$wage, abline(CEO))
View(vote1)
CEP <- lm(vote1$voteA~vote1$shareA)
CEP
plot(vote1$shareA, vote1$voteA, abline(CEP))
names(CEP)