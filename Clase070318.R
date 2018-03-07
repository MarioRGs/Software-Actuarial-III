#Etraccion de valores faltantes
airquality[1:6,]
complete.cases(airquality[1:6,])
complete.cases(airquality[1:10,])
completos <- complete.cases(airquality)
data <- airquality[completos]
airquality[completos,]
data[1:6] #Al hacer una extraccion desde un vector de logicos obtengo solo valores verdaderos

#Algunas operaciones en R
x <- 1:4; y <- 6:9
x+y
x>2
x>=2
y==8
y=8
x*y
x/y

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x;y
x%*%y
y%*%x  


#Estructuras de control
x = 3
if(x > 5){
  print("incorrecto")
} else if (x < 5){ 
  print("corrercto")
} else {
  print("NADA")
}

if (x>3){
  y <- 10
} else {
  y <- 10
}
y
}
}
