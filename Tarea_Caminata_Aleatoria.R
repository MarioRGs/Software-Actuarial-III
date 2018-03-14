#Tarea

+#ejemplo
+set.seed(1)
+conta <- 0
+z <- 5
+x <-c (z)
+while(z >= 3 && z <= 10){
  +  x[conta + 1] <- z
  +  moneda <- rbinom(1,1,0.5) # Exitos en cada intento
  +  if(moneda == 1){# Caminata aleatoria
    +    z <- z + 1
    +  }else{
      +    z <- z - 1
      +  }
  +  conta <- conta + 1
  +}
+print("se Realizaron"); print(conta); print("intentos")
+x[conta +1 ] <- z
+x