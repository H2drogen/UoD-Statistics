ceodata=read.delim("C:/Users/Loukas/Downloads/ceo-compensation-2014.txt", header = TRUE, sep = "\t", dec = ".")



mean(ceodata$Ratio)
median(ceodata$Ratio)
sd(ceodata$Ratio)
var(ceodata$Ratio)
mean(ceodata[,7])
median(ceodata[,7])
sd(ceodata[,7])
var(ceodata[,7])