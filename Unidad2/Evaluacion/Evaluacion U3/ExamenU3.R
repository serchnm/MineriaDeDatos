#Instalamos los paquetes necesarios
install.packages("naivebayes")
install.packages("e1071")
#Indicamos la ruta de nuestro archivo
getwd()
setwd("/Users/sergionavarro/Documents/MineriaDeDatos/Unidad2/Evaluacion")
getwd()
# Declaramos una varable donde importaremos nuestro dataSet y le asignamos el tamaño de las columnas
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]


# Visualizamos el DataSet
summary(dataset)
head(dataset)
#Categorizamos nuestro dataset
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
#lo volvemos a visualizar
summary(dataset)
#Importamos la libreria `caTools`
library(caTools)
#Dividimos el conjunto de datos para su training y generamos una regla del 75%
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
#Hacemos un escalado para las variables que cuentan con el mismo nombre pero no cuentan los mismos 
#datos por si las dudas
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
#visualizamos los datos del entrenamiento
head(training_set)
#Importamos esta libreria para el naiveBayes 
library(e1071)
#Ahora si viene lo bueno que es hacer la prediccion de los resultados con naive bayes
#| No necesitamos la formula original de bayes, solo ocupamos el parametro de X y Y
# donde el dataset eliminara la columna que no necesitemos que valdra como la variable dependiente |
classifier = naiveBayes(x = training_set[-3],
                        y = training_set$Purchased)
y_pred = predict(classifier, newdata = test_set[-3])
cm = table(test_set[, 3], y_pred)

#Importamos la siguiente libreria para pintar los resultados
#Declaramos la variable del entrenamiento
#Se le asigna nombre a los puntos a pintar
#PPlasmamos la informacion en el plot#Aqui tanto pintamos podmeos asignar los colores para mas variedad
#de colores
#Visite https://www.stat.auckland.ac.nz/~ihaka/downloads/R-colours-a4.pdf
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Test Naive Bayes Results',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'palegoldenrod', 'azure'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'lightgreen', 'coral'))
