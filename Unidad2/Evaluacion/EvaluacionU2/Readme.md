### Unit 2
* [Code](#Code) | [Numeric-Factor](#Numeric-Factor) | [LibraryAndNewVectorForFilters](#LibraryAndNewVectorForFilters) | [Plot](#Plot)
#### Select the folder where the data will be requested
            getwd()
            setwd("C:/Users/alex9/OneDrive/Documents/Mineria")
            getwd()
#### appropriate packages are installed
#### is used for data graphing
            install.packages("ggplot2")
#### is used for functions such as the filter
            install.packages('dplyr')

#### Code

#### the csv is read to obtain the necessary data from the movies
            Movie <- read.csv("Project-Data.csv")
#### the first data is displayed
            head(Movie)
#### Change the columns Names
            colnames(Movie) <- c("Dia", "Director", "Genero", "Titulo", "Fecha", "Estudio", "Ajustado", "Presupuesto", "Bruto","IMDBRating",  "MLRating", "Extranjero", "PExtranjero", "Ganancias", "PGanancias",  "Duracion", "EUA", "BrutasPEUA")
#### Show te first Fields
            head(Movie)						
#### Show the last fields			
            tail(Movie)
#### Show Data
            str(Movie)
#### The main characteristics of the data are shown
            summary(Movie)
#### Numeric-Factor
#### Convert numeric data to a factor
            factor(Movie$Fecha)
            Movie$Fecha <- factor(Movie$Fecha)
#### Show the important thing from the data
            summary(Movie)
            str(Movie)
#### LibraryAndNewVectorForFilters
#### Request the library to use it
            library(dplyr)
#### create a new vector with every data as we're going to need
            Genre<- c("action","adventure", "animation", "comedy", "drama")
            Studio <- c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")
#### we create a filter that gives us the appropriate genres and the studies we need
            Movies <- filter(Movie, Genero %in% Genre, Estudio %in% Studio)


#### Aesthetics
            library(ggplot2)
#### we create the graphs with the appropriate characteristics so that it looks as much as possible the necessary graph
            m <- ggplot(Movies, aes(x= Genero, y= BrutasPEUA, size=Presupuesto, color=Estudio))
#### The jitter graph is used to generate a scattered graph of the previous data
#### The boxplot graph is used as a support to better visualize the data
            m + geom_jitter() + geom_boxplot(aes(color= Presupuesto, alpha = 0.5))

#### Plot
![alt text](https://github.com/serchnm/MineriaDeDatos/blob/Unidad2/Unidad2/Evaluacion/EvaluacionU2/Plot.png)
