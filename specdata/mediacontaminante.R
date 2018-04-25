setwd("specdata")
directorio = "specdata"

mediacontaminante <- function(directorio, contaminante, id = 1:332){
  
  if(contaminante == "sulfate"){
    column = 2
  } else if(contaminante =="nitrate"){
    column = 3
  }
  
  promedio <- c()
  
  for(i in id){
    entrada <-formatC(i,width = 3,flag="0")
    salida <-paste(entrada,"csv",sep=".")
    promedio <- c(read.csv(salida)[,column],promedio)
  }
  
  promediof <- mean(promedio, na.rm = TRUE)
  promediof

}

mediacontaminante(directorio,"sulfate",1:332)
mediacontaminante(directorio,"nitrate",1:332)