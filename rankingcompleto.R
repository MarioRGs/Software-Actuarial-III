rankingcompletos <- function(resultado, num){
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
  
  
  niveles <- levels(datos[,7])
  Hospital_Name <- c()
  State <- c()
  
  for (i in niveles){
    
    
    datos[,columna] <- suppressWarnings(as.numeric(levels(datos[,columna])[datos[,columna]]))
    
    region <- datos[grep(i, datos$State), ]
    
    
    if (num == "mejor"){
      num = 1
      ordenar <- region[order(region[,columna],region[,2], na.last = TRUE),]
      
    }
    if (num == "peor"){
      num = 1
      ordenar <- region[order(region[,columna],region[,2], decreasing = TRUE  ,na.last = TRUE),]
    } else {
      ordenar <- region[order(region[,columna],region[,2], na.last = TRUE),]
      
    }
    
    
    
    Hospital_Name <- c(Hospital_Name, as.character(ordenar[1,2]))
    State <- c(State,i)
    
  }
  data.frame(Hospital_Name,State)
  
}

rankingcompletos("ataque", "4")


#Profe no pude cuando le dabas una posicion en especifico, no me dio tiempo.

