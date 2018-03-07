#dump  source
x <- "Programacion Actuarial III"
y <- data.frame(a= 1, b="a")
dump(c("x","y"), file = "Data.R" )
rm(x,y)
source("Data.R")

#dput  y source trabajan con las instrucciones de codigo que permitiran volver a contruir n objeto en lugar de obtenerlo desde alguna ubicacion.

#conexiones
con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)
x
writeLines(readLines(con), "FCFM.txt")
x[7] <- "\t<title>FCFM: Estariamos mejor con a sabes quien\t<title>"
writeLines(x, "FCFM.html")









#Creamos una lista
x <- list(foo = 1:4, bar = 0.6)
x
x[1] #El rsultado es una lista que contiene al vector de la secuencia de numeros
x[[1]] #El resultado es el vector de la secuencia de numeros
x$foo #El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]


x <- list(foo = 1:4, bar = 0.6, baz = "hola")
x[c(1,3)]# Etrae elementos no secuenciales
x[[c(1,3)]] #Extrae secuencialemente desde los elementos exxtraidos
#rimero extrae el 1er elemento y de ahi extrae la 3ra posicion


name <- "baz"
x[name]  
x[[name]]
x$name
#Si o quiero realizar extracciones con el $ es s necesarrio escribir el nombre del obeto que quiero extraer ya que no es caaz de realizar evaluaciones


#Se pueden extraer elementos de los elementos extraidos
x <- list(list(10,12,14),b = list(3.14,2.18))
x[[c(1,3)]] #extrae el 1er elemento de la 1er lista y 
x[[1]][[3]] #luego extrae el 3er elemento de esa lista (1,3)

x <- matrix(1:6,2,3)
x
x[1,2]#El resultado es un vector
#Con drop = FALSE, se mantiene la dimension y el resultado sera una matriz
x[1,2, drop = FALSE]


x <- matrix(1:6,2,3)
x
x[1,]#Si dejamos solamente el espacio el resultado es un vector
#Con drop = FALSE, se mantiene la dimension y el resultado sera una matriz
x[1, , drop = FALSE]


##Subconjuntos con Nombres

x <- list(aardvark = 1:5)
x$a #busca el nombre donde halla una a
x[["a"]] #no extrae nada porque no hay nada que tenga nicamente una a
x[["a", exact = FALSE]] # si extrae porque ya no busca lo exacto

