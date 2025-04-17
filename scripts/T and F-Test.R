# Paired T-Test
test1 = c(19,17,15,21,16,18,16,14,19,20)
test1 
test2 = c(15,14,15,19,15,18,16,20,22,19)
test2
t = t.test(test1,test2,paired = TRUE)
t
# level of significance
alpha = 0.05
# p-value
tv = t$p.value
tv
# conclusion 
if(tv>alpha){print("Accept Ho")}else(print("Reject Ho"))

# T-Test
test1 = c(19,17,15,21,16,18,16,14,19,20)
test1 
test2 = c(15,14,15,19,15,18,16,20,22,19)
test2
t = t.test(test1,test2)
t
# test statistic
cv = t$statistic
cv
#critical value
tv = qt(0.975,18)
tv
# conclusion
if(cv<=tv){print("Accept Ho")}else{print("Reject Ho")}

# F-Test
test1 = c(19,17,15,21,16,18,16,14,19,20)
test1 
test2 = c(15,14,15,19,15,18,16,20,22,19)
test2
f = var.test(test1,test2)
f
# test-statistic
cv = f$statistic
cv
#critical value
tv=qf(0.975,9,9)
tv
# conclusion
if(cv<=tv){print("Accept Ho")}else{print("Reject Ho")}
