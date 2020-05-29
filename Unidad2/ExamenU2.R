getwd()
setwd("C:/Users/alex9/OneDrive/Documents/Mineria")
getwd()
install.packages('caTools')
install.packages("ggplot2")
install.packages('dplyr')

Movie <- read.csv("Project-Data.csv")
head(Movie)
colnames(Movie) <- c("Dia", "Director", "Genero", "Titulo", "Fecha", "Estudio", "Ajustado", "Presupuesto", "Bruto","IMDBRating",  "MLRating", "Extranjero", "PExtranjero", "Ganancias", "PGanancias",  "Duracion", "EUA", "BrutasPEUA")
head(Movie)										
tail(Movie)
str(Movie)
summary(Movie)

#Convert numeric data to a factor
factor(Movie$Fecha)
Movie$Fecha <- factor(Movie$Fecha)

summary(Movie)
str(Movie)

library(dplyr)
Genre<- c("action","adventure", "animation", "comedy", "drama")
Studio <- c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")
Movies <- filter(Movie, Genero %in% Genre, Estudio %in% Studio)


# Aesthetics
library(ggplot2)
# Limits
m <- ggplot(Movies, aes(x= Genero, y= BrutasPEUA, size=Presupuesto, color=Estudio))
m + geom_jitter() + geom_boxplot(aes(color= Presupuesto, alpha = 0.5))