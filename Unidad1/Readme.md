### Unit1
---
* [Practice1](#Practice1) |

### Practice1
in the practice a script was created can count how many of these numbers fall betwen -1 and 1 and divide the total of the numbers of N

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
                for(i in rnorm(50))
                {
                count <- count+1
                    print(count)
                if(i<=1&&i>=-1){
                    print(i)
                    print("^ este esta entre -1 y 1")
                }
                    else
                    {
                    print(i)
                    print("este no esta en el rango")
                }
                }