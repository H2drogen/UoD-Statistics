ceodata=read.delim("C:/Users/Loukas/Downloads/ceo-compensation-2014.txt", header = TRUE, sep = "\t", dec = ".")


hist(ceodata$Ratio,main="Probability Histogram for Ratio field",xlab="Ratio",border="blue",col="white",xlim=c(0,2000),las=1,breaks=50,prob = TRUE)
lines(density(ceodata$Ratio))


hist(ceodata[,7],main="Probability Histogram for Ceo Compensation field",xlab="Compensation",border="red",col="white",xlim=c(0,2000),las=1,breaks=50,prob = TRUE)
lines(density(ceodata[,7]))