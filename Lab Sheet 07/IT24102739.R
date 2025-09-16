setwd("C:/Users/DVM/OneDrive/Desktop/IT24102739")


# 1: Uniform Distribution 
# Random variable X ~ Uniform(min=0, max=40).
# Find P(10 < X < 25)
punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)

# 2: Exponential Distribution 
# Time X ~ Exponential(rate=1/3).
# Find P(X <= 2).
pexp(2, rate=1/3, lower.tail=TRUE)

# 3: Normal Distribution
# IQ X ~ Normal(mean=100, sd=15).

# i): P(X > 130)
1 - pnorm(130, mean=100, sd=15, lower.tail=FALSE)


# ii): Find b where P(X < b) = 0.95.
qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)