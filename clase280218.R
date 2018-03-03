#Lectra  escrtura de datos

# dput dget

#1 creo el objeto
y <- data.frame(a=1,b="a")
#2 estudio la menera en que se guardara
dput(y)
#3 lo guardo en mi disco duro
dput(y,file ="y.R" )
#4 genero un nuevo objeto a partir de la info guardada
y2 <- dget(y,file ="y.R" )
y2
