# Listas
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
# Todos los elementos de una lista mantiene la clase que originalmente tiene

#matrices
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

# Como llenar una matriz
m <- matrix(data=1:6, nrow = 2, ncol = 3)
m <- matrix(1:6,2,3)
m

#la manera de llenarse fue por columna
#si yo quisiera que se llenara por fila
m <- matrix(data=1:6, nrow = 2, ncol = 3, byrow = TRUE)
m <- matrix(1:6,2,3,T)
m

#Una manera de crear una matriz es desde un vector y
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12
#CBind, unir columnas
cbind(x,y)
rbind(x,y)

#Factores
x <-factor(c("Si", "Si", "No", "No", "Si"))
x

x <-factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x

table(x)
unclass(x)
