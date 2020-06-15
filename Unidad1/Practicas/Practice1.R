# Ejercicio 1 Correcto
x<-rnorm(50)
y <- dnorm(x,mean = 0, sd = 1)
plot(x,y)
count <- 0
Resultado <- 0
for(i in rnorm(50))
{
  count <- count+1
    print(count)
  if(i<=1&&i>=-1){
    print(i)
    print("^ este esta entre -1 y 1")
    Resultado <- Resultado +1
  }
    else
    {
    print(i)
    print("este no esta en el rango")
  }
}
Res <- Resultado/count
print(Res)
