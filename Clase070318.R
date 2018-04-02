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

#Ciclos for

for (i in 1:10 ){
  print(i)
}

for (i in c("a","b","c") ){
  print(i)
}


#La forma en la que trabaja for dentro de R es mas similar al for each de visual basic


x <- c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){
  print(x[i])
}

for(letra in x){
  print(letra)
}

for(i in 1:4) print(x[i])

#Ciclos anidados
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}
x

#Ciclos While

count <-0
while(count<10){
  print(count)
  count <- count + 1
}


set.seed(1)
z <- 5
contador <- 0
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){ #Caminata aleatoria
    z <- z+1
    } else {
      z <- z - 1
    }
  contador = contador + 1
}
contador


print("Se realizaro "); print(contador); print(" pasos")



set.seed(1)
z <- 5
contador <- 0
while(z>=3 && z<=10){
  
  print(z)
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){ #Caminata aleatoria
    
    z <- z+1
  } else {
    
    z <- z - 1
  }
 
  contador = contador + 1
}
contador


