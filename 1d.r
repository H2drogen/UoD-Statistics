ceodata=read.delim("C:/Users/Loukas/Downloads/ceo-compensation-2014.txt", header = TRUE, sep = "\t", dec = ".")



FindOutliers <- function(data) {
  lower_bound <- quantile(data[,5], 0.025)
  upper_bound <- quantile(data[,5], 0.975)
  for(i in 1:434){
      if(data[,5][i] < lower_bound | data[,5][i] > upper_bound){
          print(data[,2][i])
      }
  }

}

FindOutliers(ceodata)
