salmondata=read.delim("C:/Users/Loukas/Downloads/farmed-salmon.txt", header = TRUE, sep = "\t", dec = ".")


hist(salmondata$Mirex,main="Probability Histogram for Mirex",xlab="Ratio",border="green",col="white",xlim=c(0,0.2),las=1,breaks=50,prob = TRUE)
lines(density(na.omit(salmondata$Mirex)))
