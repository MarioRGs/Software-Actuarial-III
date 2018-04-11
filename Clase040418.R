#lapply

x <- list(a = 1:5,b = rnorm(10000))
lapply(x, mean)
x

x <-list(a = 1:5,b = rnorm(10),c = rnorm(10,1),d = rnorm(10,2) )
lapply(x,mean)

x <- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, max = 15, min = 5)

x <- list(a = 1:5,b = rnorm(10),c = rnorm(10,3),d = rnorm(10,5))
lapply(x,mean)
sapply(x,mean)

x <- matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs = c(0.25, 0.75))
