ceodata=read.delim("C:/Users/Loukas/Downloads/ceo-compensation-2014.txt", header = TRUE, sep = "\t", dec = ".")


RmOutliers <- function(data) {
lower_bound <- quantile(data[,5], 0.025)
upper_bound <- quantile(data[,5], 0.975)
no_outliers <- subset(data, data[,5]<upper_bound & data[,5]>lower_bound )
lower_bound <- quantile(data[,7], 0.025)
upper_bound <- quantile(data[,7], 0.975)
no_outliers2 <- subset(no_outliers, no_outliers[,7]<upper_bound & no_outliers[,7]>lower_bound )
return(no_outliers2)
}
no_outliers<-RmOutliers(ceodata)


mean(no_outliers$Ratio)
median(no_outliers$Ratio)
sd(no_outliers$Ratio)
var(outliers$Ratio)
mean(no_outliers[,7])
median(no_outliers[,7])
sd(no_outliers[,7])
var(no_outliers[,7])