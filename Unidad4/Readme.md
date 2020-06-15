### Unidad4

- [Code](#Code) | [Plot](#Plot) | [K-Means](#K-Means) | [Cluster](#Cluster)

#### Code
##### Get de filepath data
        setwd("/Users/sergionavarro/Documents/MineriaDeDatos/Unidad4/Evaluacion")
#### returns an absolute filepath representing the current working directory
        getwd()
#### get .csv file and assigned to dataset
        iris <- read.csv("iris.csv")
        iris = iris[1:4]

#### Using the elbow method to find the optimal number of clusters
        set.seed(6)
        wcss = vector()
        for (i in 1:10) wcss[i] = sum(kmeans(iris, i)$withinss)


        plot(1:10,
            wcss,
            type = 'b',
            main = paste('The Elbow Method'),
            xlab = 'Number of clusters',
            ylab = 'WCSS',
            col = 'tomato')

#### Plot
![alt text](https://github.com/serchnm/MineriaDeDatos/blob/Unidad4/Unidad4/Evaluacion/Images/redDiagram.png)

#### K-Means
#### Fitting K-Means to the dataset
        set.seed(29)
        kmeans = kmeans(x = iris, centers = 3)
        y_kmeans = kmeans$cluster

#### Visualising the clusters
#### install.packages('cluster')
        library(cluster)
        clusplot(iris,
                y_kmeans,
                lines = 0,
                shade = TRUE,
                color = TRUE,
                labels = 2,
                plotchar = FALSE,
                span = TRUE,
                main = paste('Clusters of iris'),
                xlab = 'clouster',
                ylab = 'Petal length')
                
#### Cluster
![alt text](https://github.com/serchnm/MineriaDeDatos/blob/Unidad4/Unidad4/Evaluacion/Images/Rplot.png)

#### Return
- [Index](#Unidad4)
