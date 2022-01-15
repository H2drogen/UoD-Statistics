salmondata=read.delim("C:/Users/Loukas/Downloads/farmed-salmon.txt", header = TRUE, sep = "\t", dec = ".")


sample_means50 <- rep(NA, 1000)

for (i in 1:1000) {
  samp <- sample(salmondata[,3], size=40, replace = FALSE)
  sample_means50[i] <- mean(samp)
}


hist(sample_means50, breaks = 10,prob=TRUE)
lines(density(na.omit(sample_means50)))
