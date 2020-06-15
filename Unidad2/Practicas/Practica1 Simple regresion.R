getwd()
setwd("C:/Users/alex9/OneDrive/Documents/Mineria")
getwd()

# Importing the dataset
dataset <- read.csv('vgsales.csv')

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
install.packages("ggplot2")
#library(caTools)
set.seed(123)
split <- sample.split(dataset$Global_Sales, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Global_Sales ~ NA_Sales,
               data = dataset)
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$NA_Sales, y=training_set$Global_Sales),
             color = 'red') +
  geom_line(aes(x = training_set$NA_Sales, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('North America Sales vs Global Sales(Training Set)') +
  xlab('North America Sales') +
  ylab('Global Sales')

# Visualising the Test set results
ggplot() +
  geom_point(aes(x=test_set$NA_Sales, y=test_set$Global_Sales),
             color = 'red') +
  geom_line(aes(x = training_set$NA_Sales, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('North America Sales vs Global Sales(Test Set)') +
  xlab('North America Sales') +
  ylab('Global Sales')