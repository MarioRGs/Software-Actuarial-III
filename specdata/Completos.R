setwd("specdata")
directorio = "specdata"

completos <- function(directorio,id = 1:332){

  n <- c()  
  m <- c()
    for(i in id){
    entrada <-formatC(i,width = 3,flag="0")
    salida <-paste(entrada,"csv",sep=".")
    renglones <- nrow(na.exclude(read.csv(salida)))
    n <- c(n,renglones)
    m <- c(m,i)
    id <- m
  }
data.frame(id,n)
}

completos(directorio,3)
