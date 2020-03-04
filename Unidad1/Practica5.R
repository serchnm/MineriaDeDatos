?read.csv()
read.csv("/home/alex/Documentos/DataMining/Dataframes/Demographic-Data.csv")
# Method 1: Select the file manually
stats <- read.csv(file.choose(Demographic-Data.csv))
stats

# Method 2: Set Working Directory and Read Data
getwd()
#windows
setwd("C:\\Users\\username\\Documents\\Rprojects")
#Mac
setwd()
##correcto
setwd("/home/alex/Documentos/DataMining/Dataframes")
getwd()
stats <- read.csv("Demographic-Data.csv")
stats
rm(stats)