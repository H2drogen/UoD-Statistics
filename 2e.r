salmondata=read.delim("C:/Users/Loukas/Downloads/farmed-salmon.txt", header = TRUE, sep = "\t", dec = ".")

xbar = mean(na.omit(salmondata[,3]))          
mu0 = 0.08
s = sd(na.omit(salmondata[,3]))           
n = 153
alpha = .05
upper=xbar-mu0
lower=s/sqrt(n)
t=upper/lower
t
upper=1-alpha/2
lower=(df=n-1)
t.half.alpha = qt(upper,lower)
t.half.alpha
