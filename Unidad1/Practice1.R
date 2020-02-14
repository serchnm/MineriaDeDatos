Ejercicio 1
x <- seq(-10, 10, by = 1)
dnorm(x,mean = 0, sd = 1)
y <- dnorm(x,mean = 0, sd = 1)
plot(x,y)
for(i in y:21)
{
  print(y)
  if(y<=1&&i>=-1)
    result < print("este esta entre -1 y 1", y)
}
Ejercicio 1 Correcto
x<-rnorm(50)
y <- dnorm(x,mean = 0, sd = 1)
plot(x,y)
for(i in rnorm(50))
{
  print(i)
  print(rnorm(i))
  if(rnorm(i)<=1&&rnorm(i)>=-1)
    result < print("este esta entre -1 y 1")
}