rankhospital <- function(estado,resultado, num){
  datos <- read.csv("outcome-of-care-measures.csv")
  
  if (resultado != "ataque" & resultado != "falla" & resultado != "neumonia"){
    stop("Error en el resultado")
  } 
  if (resultado == "ataque"){
    columna <- 11
  } 
  if (resultado == "falla"){
    columna <- 17
  } 
  if(resultado == "neumonia") {
    columna <- 23
  }
  
  datos[,columna] <- suppressWarnings(as.numeric(levels(datos[,columna])[datos[,columna]]))
  
  region <- datos[grep(estado, datos$State), ]
  
  ordenar <- region[order(region[,columna],region[,2], na.last = TRUE),]
  renglones <- nrow(ordenar)
  ordenar$Rank <- c(1: renglones)
  
  
  
  if (num == "mejor"){
    num = 1
  }
  
  
  Hospital_Name <- ordenar[,2]
  Rate <- ordenar[,columna]
  Rank <- ordenar$Rank
  repollo <- na.omit(data.frame(Hospital_Name,Rate,Rank))
  nepe <- nrow(repollo)
  nepe
  if (num == "peor"){
    num = nepe
  } else if (num > nepe){
    stop("ranking invalido")
  } else if (num < 1) {
    stop("raning invalido")
  } 
  repollaso <- which(repollo[,3] == num)
  repollasaso <- repollo[repollaso,]
  repollasaso
}
rankhospital("MN","ataque", "1")




