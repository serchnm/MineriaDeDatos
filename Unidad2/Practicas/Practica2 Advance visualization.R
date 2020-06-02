getwd()
setwd("C:/Users/alex9/OneDrive/Documents/Mineria")
getwd()
install.packages('caTools')
install.packages("ggplot2")
Games <- read.csv("vgsales.csv")
head(Games)
colnames(Games) <- c("Rank", "Name", "Platform", "Year", "Genre", "Publisher", "NA_Sales", "EU_Sales", "JP_Sales","Other_Sales",  "Global_Sales")
head(Games)										
tail(Games)
str(Games)
summary(Games)

#Convert numeric data to a factor
factor(Games$Year)
Games$Year <- factor(Games$Year)

summary(Games)
str(Games)

# Aesthetics
library(ggplot2)

ggplot(data=Games, aes(x=NA_Sales, y=JP_Sales))

# Add Geometry
ggplot(Games, aes(x=NA_Sales, y=JP_Sales)) + 
  geom_point()

# Add Color
ggplot(Games, aes(x=NA_Sales, y=JP_Sales, 
                   color=Genre)) + 
  geom_point()

# Add Size
ggplot(Games, aes(x=NA_Sales, y=JP_Sales, 
                   color=Genre, size=Global_Sales)) + 
  geom_point()
#>>> This is #1 (we need to improve it)

# -------------------- Ploting With Layers
p <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales, 
                        color=Genre, size=Global_Sales))
# points
p + geom_point()

# lines
p + geom_line()

# multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

#------------------- Overriding Aesthetics
p2 <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales, 
                         color=Genre, size=Global_Sales))
# add geom layer
p2 + geom_point()

# overriding aes
# example 1
p2 + geom_point(aes(size=NA_Sales))

# example 2
p2 + geom_point(aes(color=Global_Sales))

# p2 remains the same
p2 + geom_point()

# example 3
p2 + geom_point(aes(x=Global_Sales)) 
p2 + geom_point(aes(x=Global_Sales)) + xlab("Budget Millions $$$")

# example 4
p2 + geom_line() + geom_point()
# reduce line size
p2 + geom_line(size=1) + geom_point()


#----------------- Mapping vs Setting
r <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales))
r + geom_point()

# Add color
#1. Mapping (what we've done so far)
r + geom_point(aes(color = Genre))
#2. By Setting:
r + geom_point(color="DarkGreen")
# ERROR
r + geom_point(aes(color = "DarkGreen"))

#1. size by Mapping
r + geom_point(aes(size=Global_Sales))
#2. size by Setting
r + geom_point(size=10)
# ERROR
r + geom_point(aes(size=10))

#-------------- Histograms and Density Charts (Statistics)
s <- ggplot(data=Games, aes(x=Global_Sales))
s + geom_histogram(binwidth = 10)

# Add color
s + geom_histogram(binwidth =10, aes(fill=Genre))
# Add a border
s + geom_histogram(binwidth =10, aes(fill=Genre), color="Black")

# Density charts:
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position = "stack")


#------------------ Starting Layer Tips

t <- ggplot(Games, aes(x=JP_Sales))
t + geom_histogram(binwidth = 10, fill="White", color="Blue")   

#another way
t <- ggplot(data=Games)
t + geom_histogram(binwidth=10,
                   aes(x=JP_Sales),
                   fill="White", color="Blue")

t + geom_histogram(binwidth=10,
                   aes(x=NA_Sales),
                   fill="White", color="Blue")
t <- ggplot()

#-------------------- Statistical Transformation

?geom_smooth

u <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales,
                        color=Genre))
u + geom_point() + geom_smooth(fill=NA)

#boxplots
u <- ggplot(Games, aes(x=Genre, y=JP_Sales,
                        color=Genre))

u + geom_boxplot()  
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
# tip / hack
u + geom_boxplot(size=1.2) + geom_jitter()
# another way
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

#------------------ Using Facets
v <- ggplot(Games, aes(x=Global_Sales))
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black")
#Facets
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black") + facet_grid(Genre~., scales="free")

#scatterplots:
w <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales,
                        color=Genre))


w + geom_point(size=3) + facet_grid(Genre~.)

w + geom_point(size=3) + facet_grid(.~Year)

w + geom_point(size=3) + facet_grid(Genre~Year)

w + geom_point(size=3) + 
  geom_smooth() + 
  facet_grid(Genre~Year)

w + geom_point(aes(size=Global_Sales)) + 
  geom_smooth() + 
  facet_grid(Genre~Year)

#------------ Coordinates
# Limits
m <- ggplot(Games, aes(x=NA_Sales, y=JP_Sales,
                        size=Global_Sales,
                        color=Genre))

m + geom_point()

m + geom_point() + xlim(50,100) + ylim(50, 100)

# No work well always

n <- ggplot(Games, aes(x=Global_Sales))
n + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")
n + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") + ylim(0, 50)

#instead -> zoom
n + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") +
  coord_cartesian(ylim=c(0, 50))

w + geom_point(aes(size=Global_Sales)) + 
  geom_smooth() + 
  facet_grid(Genre~Year) + 
  coord_cartesian(ylim=c(0,100))

#-------------- Theme
o <- ggplot(Games, aes(x=Global_Sales))
h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

h

#axes labels
h + xlab("Money Axis") + ylab("Number of Games")

#label formatting
h +
  xlab("Money Axis") +
  ylab("Number of Games") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=30),
        axis.title.y = element_text(color = "Red", size=30))

#tick mark formatting
h +
  xlab("Money Axis") +
  ylab("Number of Games") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))

?theme

#Legend formatting
h +
  xlab("Money Axis") +
  ylab("Number of Games") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

#Title of the plot
h +
  xlab("Money Axis") +
  ylab("Number of Games") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color = "DarkBlue",
                                  size = 25,
                                  family = "Courier"))