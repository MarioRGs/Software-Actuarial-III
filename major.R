major <- function(estado,resultado){
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
  
  x <- c(as.character(ordenar[1,2]))
  x
  
}
major("TX","falla")















