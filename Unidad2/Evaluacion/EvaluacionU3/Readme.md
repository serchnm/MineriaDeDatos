## Unidad 3

- [Code](#Code) | [NaiveBayes](#NaiveBayes) | [Training](#Training) | [Colors](#Colors) | [NaivePoints](#NaivePoints)

#### Install the necesary package

            install.packages("naivebayes")
            install.packages("e1071")
# Get the Route
            getwd()
            setwd("/Users/sergionavarro/Documents/MineriaDeDatos/Unidad2/Evaluacion")
            getwd()
#### Assing the DataSet into a variable and set the size
            dataset = read.csv('Social_Network_Ads.csv')
            dataset = dataset[3:5]

#### Code

#### Show the DataSet
            summary(dataset)
            head(dataset)
#### We categorize our dataset
            dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
#### Show it again
            summary(dataset)
#### Import CatTools Note: if you cans install the package download it from internet tu use in the version 3.6.3 and lowe

#### Training
            library(caTools)
#### We divide the data set for your training and generate a 75% rule
            set.seed(123)
            split = sample.split(dataset$Purchased, SplitRatio = 0.75)
            training_set = subset(dataset, split == TRUE)
            test_set = subset(dataset, split == FALSE)
#### We do a scaling for the variables that have the same name but do not count the same
#### data in case of doubts
            training_set[-3] = scale(training_set[-3])
            test_set[-3] = scale(test_set[-3])
#### visualize the data from the training
            head(training_set)
#### Import the amazing Naive Bayes
            library(e1071)
            #Ahora si viene lo bueno que es hacer la prediccion de los resultados con naive bayes
#### | We do not need the original formula for bayes, we only occupy the parameter of X and Y
#### where the dataset will remove the column that we don't need will be worth as the dependent variable |
#### NaiveBayes
            classifier = naiveBayes(x = training_set[-3],
                                    y = training_set$Purchased)
            y_pred = predict(classifier, newdata = test_set[-3])
            cm = table(test_set[, 3], y_pred)

#### We import the following library to paint the results
#### We declare the training variable
#### The points to be painted are named
#### PPlasmamos the information in the plot # Here we both paint podmeos assign colors for more variety
#### of colors
#### Colors
#### Visite https://www.stat.auckland.ac.nz/~ihaka/downloads/R-colours-a4.pdf
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

#### NaivePoints
![alt text](https://github.com/serchnm/MineriaDeDatos/blob/Unidad2/Unidad2/Evaluacion/EvaluacionU3/Naive.png)
