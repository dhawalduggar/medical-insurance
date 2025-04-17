weight=c(15,26,27,2,25.5,27,32,18,22,20,26,24) 
weight
bmi=c(133.35,16.1,16.74,16,13.59,15.73,15.65,13.85,16.07,12.8,13.65,14.42) 
bmi
cor(weight,bmi)

mode1=lm(bmi~weight) 
summary(mode1)
