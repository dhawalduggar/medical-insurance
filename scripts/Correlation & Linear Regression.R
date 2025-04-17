# inbuilt dataset - cars
data = cars
data
summary(data)
# Variance
v1 = var(data$speed)
v1
v2 = var(data$dist)
v2
# Co-variance
covar = cov(data$speed,data$dist)
covar
# Correlation coefficient (Pearson's formula)
corr = covar/(sd(data$speed)*sd(data$dist))
corr
# or 
corr = cor(data$speed,data$dist)
corr
# Test of association b/w paired samples
cor.test(data$speed,data$dist,method="pearson")
# default method is pearson. can change to spearman accdly
cor.test(data$speed,data$dist,method="spearman")
# Visualize the samples
plot(data$speed,data$dist)

# Linear Regression - speed wrt dist
regression1 = lm(data$speed~data$dist)
regression1

# Visualize Linear Regression line
abline(regression1)
summary(regression1)

# Linear Regression - dist wrt speed
regression2 = lm(data$dist~data$speed)
regression2

# Visualize
abline(regression2)
summary(regression2)