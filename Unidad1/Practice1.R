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

[1] 1
[1] -0.4711258
[1] "^ este esta entre -1 y 1"
[1] 2
[1] -0.7585518
[1] "^ este esta entre -1 y 1"
[1] 3
[1] -0.08373024
[1] "^ este esta entre -1 y 1"
[1] 4
[1] 0.4901271
[1] "^ este esta entre -1 y 1"
[1] 5
[1] 0.1575244
[1] "^ este esta entre -1 y 1"
[1] 6
[1] -0.8734366
[1] "^ este esta entre -1 y 1"
[1] 7
[1] 0.1026446
[1] "^ este esta entre -1 y 1"
[1] 8
[1] 0.7923868
[1] "^ este esta entre -1 y 1"
[1] 9
[1] -1.839205
[1] "este no esta en el rango"
[1] 10
[1] 1.154657
[1] "este no esta en el rango"
[1] 11
[1] 0.4481535
[1] "^ este esta entre -1 y 1"
[1] 12
[1] 2.847989
[1] "este no esta en el rango"
[1] 13
[1] 0.9032814
[1] "^ este esta entre -1 y 1"
[1] 14
[1] 0.05010679
[1] "^ este esta entre -1 y 1"
[1] 15
[1] -0.2960152
[1] "^ este esta entre -1 y 1"
[1] 16
[1] -0.5182039
[1] "^ este esta entre -1 y 1"
[1] 17
[1] -0.2334761
[1] "^ este esta entre -1 y 1"
[1] 18
[1] -0.2174282
[1] "^ este esta entre -1 y 1"
[1] 19
[1] -0.797476
[1] "^ este esta entre -1 y 1"
[1] 20
[1] -0.5485687
[1] "^ este esta entre -1 y 1"
[1] 21
[1] -1.248331
[1] "este no esta en el rango"
[1] 22
[1] 0.8172017
[1] "^ este esta entre -1 y 1"
[1] 23
[1] 0.06695212
[1] "^ este esta entre -1 y 1"
[1] 24
[1] 0.1612677
[1] "^ este esta entre -1 y 1"
[1] 25
[1] -1.268347
[1] "este no esta en el rango"
[1] 26
[1] -0.5163863
[1] "^ este esta entre -1 y 1"
[1] 27
[1] -0.01372911
[1] "^ este esta entre -1 y 1"
[1] 28
[1] 0.8897875
[1] "^ este esta entre -1 y 1"
[1] 29
[1] 0.2480853
[1] "^ este esta entre -1 y 1"
[1] 30
[1] 1.661056
[1] "este no esta en el rango"
[1] 31
[1] 0.4258349
[1] "^ este esta entre -1 y 1"
[1] 32
[1] 0.3959617
[1] "^ este esta entre -1 y 1"
[1] 33
[1] 0.1764491
[1] "^ este esta entre -1 y 1"
[1] 34
[1] 0.1889565
[1] "^ este esta entre -1 y 1"
[1] 35
[1] 1.120257
[1] "este no esta en el rango"
[1] 36
[1] 0.5065197
[1] "^ este esta entre -1 y 1"
[1] 37
[1] -1.586377
[1] "este no esta en el rango"
[1] 38
[1] 0.1102991
[1] "^ este esta entre -1 y 1"
[1] 39
[1] -1.198417
[1] "este no esta en el rango"
[1] 40
[1] -1.046756
[1] "este no esta en el rango"
[1] 41
[1] -1.337469
[1] "este no esta en el rango"
[1] 42
[1] 1.884168
[1] "este no esta en el rango"
[1] 43
[1] 1.285462
[1] "este no esta en el rango"
[1] 44
[1] 0.5590351
[1] "^ este esta entre -1 y 1"
[1] 45
[1] -0.570494
[1] "^ este esta entre -1 y 1"
[1] 46
[1] -1.818647
[1] "este no esta en el rango"
[1] 47
[1] 0.9358523
[1] "^ este esta entre -1 y 1"
[1] 48
[1] -1.081302
[1] "este no esta en el rango"
[1] 49
[1] 0.3558926
[1] "^ este esta entre -1 y 1"
[1] 50
[1] -0.9335079
[1] "^ este esta entre -1 y 1"
> Res <- Resultado/count
> print(Res)
[1] 0.7