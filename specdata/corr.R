setwd("specdata")
directorio = "specdata"

corr <- function(directorio, horizonte = 0){
  m <-c()
  for (i in 1:332) {
  entrada <-formatC(i,width = 3,flag="0")
  salida <-paste(entrada,"csv",sep=".")
  renglones <- na.exclude(read.csv(salida))
  n <- nrow(renglones)
  if(n > horizonte){
    x = data.frame(renglones[,2])
    y = data.frame(renglones[,3])
    corre <- cor(x,y)
    m <- c(corre,m)
    }
  
  }
  m
}
  
corr(directorio, 250)

