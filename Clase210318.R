#Funciones

suma2 <- function(x,y){
  x+y
}
suma2(1,3) #4

mayor10 <- function(x){
  seleccionados <- x>10
  x[seleccionados]
}
mayor10(1:20) #11 12 13 14 15 16 17 18 19 20

mayor <- function(x,n=10){
  x[x>n]
}

#Dado que la funcion tiene n=10, al  no colocar el argumento en un
mayor(1:20) #11 12 13 14 15 16 17 18 19 20
mayor(1:20,15) #16 17 18 19 20
mayor(n=15, x = 1:20) #16 17 18 19 20

promedioCol <- function(x,quitarNA = TRUE){
  nc <- ncol(x)
  medias <- vector("numeric", nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i],na.rm = quitarNA)
  }
  medias
}


x <- matrix(1:100,20,5)
promedioCol(x)

f <- function(a,b){
  a^2
}

f(2)


g <- function(a,b){
  print(a)
  print(b)
}
g(3)


myplot <- function(x,y,type="l",...){
  plot(x,y,type = type, ...)
}


myplot(1:10,10:1)
plot(1:10,10:1)

myplot(1:10,10:1,main="Mi Grafica",perro="123")

paste("ELLA","NO","TE","AMA", sep = ".")

mypaste <- function(sep = ".", ...){
  paste(..., sep = sep)
}

mypaste(".", "ella","no","te","ama")

#Tarea

install.packages("swirl")
library(swirl)
swirl()
