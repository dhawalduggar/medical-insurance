Y=c(110,80,70,120,150,90,70,120) 
Y
X1=c(30,40,20,50,60,40,20,60)
X1
X2=c(11,10,7,15,19,12,8,14) 
X2
RegModel=lm(Y~X1+X2) 
RegModel
summary(RegModel)
library(scatterplot3d)
graph = scatterplot3d(Y,X1,X2)
graph$plane3d(RegModel)
