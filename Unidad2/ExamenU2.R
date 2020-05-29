#Se selecciona el folder de donde se van a solicitar los datos
getwd()
setwd("C:/Users/alex9/OneDrive/Documents/Mineria")
getwd()
#se instalan los paquetes adecuados
#se utiliza para la graficacion de datos
install.packages("ggplot2")
#se utiliza para unas funciones como el filtro
install.packages('dplyr')
#se lee el csv para obtener los datos necesarios de las peliculas
Movie <- read.csv("Project-Data.csv")
#se muestran los primeros datos
head(Movie)
#se cambian los nombres de las columnas
colnames(Movie) <- c("Dia", "Director", "Genero", "Titulo", "Fecha", "Estudio", "Ajustado", "Presupuesto", "Bruto","IMDBRating",  "MLRating", "Extranjero", "PExtranjero", "Ganancias", "PGanancias",  "Duracion", "EUA", "BrutasPEUA")
#Se muestran los primeros datos
head(Movie)						
#Se muestran los ultimos datos				
tail(Movie)
#Se muestran los datos del centro
str(Movie)
#Se muestran las caracteristicas principales de los datos
summary(Movie)

#Convert numeric data to a factor
factor(Movie$Fecha)
Movie$Fecha <- factor(Movie$Fecha)
#Se muestran las caracteristicas principales de los datos
summary(Movie)
str(Movie)
#se solicita la libreria
library(dplyr)
#creamos un nuevo vector con los datos que necesitamos
Genre<- c("action","adventure", "animation", "comedy", "drama")
Studio <- c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")
#creamos un filtro que nos de los generos adecuados y los estudios que necesitamos
Movies <- filter(Movie, Genero %in% Genre, Estudio %in% Studio)


# Aesthetics
library(ggplot2)
# creamos las graficas con las caracteristicas adecuadas para que se parezca lo mas posible a la grafica necesaria
m <- ggplot(Movies, aes(x= Genero, y= BrutasPEUA, size=Presupuesto, color=Estudio))
#Se utiliza la grafica jitter para generar una grafica esparcida de los datos anteriores
#Se utiliza la grafica boxplot como apoyo para visualizar mejor los datos
m + geom_jitter() + geom_boxplot(aes(color= Presupuesto, alpha = 0.5))