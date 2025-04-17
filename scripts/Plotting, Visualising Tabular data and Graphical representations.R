a = c(1,3,5,7)
b = c(2,4,6,8)
a+b
#character object is used to represent string values in R
X = as.character(5.2)
X
Y = paste("Hello","my","name","is","Dhawal")
Y
# Creating an S.No.
S.No. = c(1:26)
S.No.
# Creating a vector age
# if we need to make diff columns indexed under youth and uncles
#Age = c(youth=20:30,uncles=31:45)
youth = c(20:30)
uncles = c(31:45)
Age = c(youth,uncles)
Age
# Creating a vector Gender
gender = c(0,1,0,1,0,0,1,0,1,0,1,0,1,1,1,1,1,1,1,0,0,0,0,0,1,1)
gender
# Creating a vector Status
status = c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2,2,2,1,2,1,2,1,2,2,2,1) 
status
# Combining vectors
info = data.frame(S.No.,Age,gender,status)
info
# Labelling character to numeric
info$gender = factor(info$gender, labels = c("Male","Female"))
info$gender
info$status = factor(info$status, labels = c("Staff","Faculty"))
info$status
info
# Extract Male data
male = subset(info,info$gender=="Male")
male
# Extract Female data
female = subset(info,info$gender=="Female")
female
# Summary stats
summary(info)
# Summary of Male, Female & Age
summary(male)
summary(female)
summary(Age)
# Creating Table (one-way)
table1 = table(info$gender)
table1
table2 = table(info$status)
table2
# Creating Table(two-way)
table3 = table(info$gender,info$status)
table3
# Scatterplot
plot(info$Age,type = "l",main="Age of Employees",xlab="Employee ID",ylab="Age(in years)",col="blue")

# Pie-chart
pie(table1)
# pie(table1)
pie(table1,labels = c("Males","Females"),edges = 100,radius = 1)
legend("topleft",legend = c("Males","Females"),fill=c("white","lightblue"),bty="n")
# Use gg plot for more on pie-charts

# Bar-plot
barplot(table3,beside=T,xlim=c(1,26),ylim=c(1,10),col=c("blue","red"))
legend("topright",legend=rownames(table3),fill=c('blue','red'),bty="n")
# Box-plot
boxplot(info$Age~info$status,col=c('red','blue'))
legend("topright",legend = c("Age","Status"),fill = c("red","blue"),bty="n")
