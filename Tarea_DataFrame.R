#Creamos en objeto
x <- data.frame(mtcars)
x
#Vemos como se guarda
dput(x)
#Lo gardamos en el disco
dput(x, file = "Carros.R" )
#creamos un nuevo objeto
x2 <- dget(file = "Carros.R")
#Vemos como se guardo el nuevo
dput(x2)
#Lo gardamos en el disco con otro nombre
dput(x2, file = "CarrosMario.R" )
