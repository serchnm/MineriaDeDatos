getwd()
setwd("/Users/sergionavarro/Documents/MineriaDeDatos/Unidad2/Practicas")
getwd()

# Importing the dataset
dataset <- read.csv('vgsales.csv')

# Encoding categorical data 
dataset$Genre = factor(dataset$Genre,
                       levels = c('Sports',
                                  'Platform',
                                  'Racing',
                                  'Puzzle',
                                  'Role-Playing',
                                  'Misc',
                                  'Shooter',
                                  'Simulation',
                                  'Misc',
                                  'Action',
                                  'Fighting',
                                  'Adventure',
                                  'Strategy'),
                       labels = c(1,2,3,4,5,6,7,8,9,10,11,12,13))

dataset
# Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(123)
split <- sample.split(dataset$Global_Sales, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression to the Training set
#regressor = lm(formula = Global_Sales ~NA_Sales + JP_Sales + Other_Sales + Genre)
regressor = lm(formula = Global_Sales ~ .,
               data = training_set )

summary(regressor)

# Prediction the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred

# Assigment: visualize the siple liner regression model withNA_Sales 

# Building the optimal model using Backward Elimination
regressor = lm(formula = Global_Sales ~ NA_Sales + JP_Sales + Other_Sales + Genre,
               data = dataset )
summary(regressor)

regressor = lm(formula = Global_Sales ~NA_Sales + JP_Sales + Other_Sales,
               data = dataset )
summary(regressor)

regressor = lm(formula = Global_Sales ~NA_Sales + Other_Sales,
               data = dataset )
summary(regressor)

regressor = lm(formula = Global_Sales ~NA_Sales + Other_Sales,
               data = dataset )
summary(regressor)

y_pred = predict(regressor, newdata = test_set)
y_pred

# Homework analise the follow atomation backwardElimination function 
#el uso del bacward selection es para revisar el nivel de eficiencia de los datos al 
#faltarle alguna de las columnas
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Global_Sales ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

SL = 0.05
#dataset = dataset[, c(1,2,3,4,5)]
training_set
#lo que se busca es que los datos de Pr(>|t|) sean menores que SL
#si los datos son menores el sistema funciona mejor
#si son iguales no le afecta
#si son mayores el sistema empeora
backwardElimination(training_set, SL)