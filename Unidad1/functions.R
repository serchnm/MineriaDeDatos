?rnorm()

c()
seq()
rep()

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt()
paste()

#?

# Practice find 20 more funtions in R and make an example of it.

?dnorm()
datos <- seq(1,100, 1)
dnorm(datos,0, 1)
?pnorm()
datos <- seq(1,100, 1)
pnorm(datos,0, 1)
?qnorm()
datos <- seq(1,100, 1)
qnorm(datos,0, 1)
?ls()
ls()
[1] "Data"              "FieldGoalAttempts" "FieldGoals"        "Games"             "MinutesPlayed"    
[6] "Players"           "Points"            "Salary"            "Seasons"  
?abs()
abs(-5151516193)
5151516193
?all()
all(Points, Games)
[1] FALSE
all(Points = FALSE, Games = TRUE)
[1] FALSE
> all(Points = FALSE, Games = FALSE)
[1] FALSE
> all(Points = TRUE, Games = true)
Error: objeto 'true' no encontrado
> all(Points = TRUE, Games = TRUE)
[1] TRUE
?length()
length(datoss)
[1] 100
?mode()
mode(integer())
mode(152)
?storage.mode()
storage.mode(integer())
storage.mode(152)
?exp()
exp(23)
?log()
log(23, base = exp(3))
?logb()
logb(23, base = exp(3))
?log10()
log10(23)
?log2()
log2(23)
?cat()
Holamundo <- cat("Hola", "esto","es", "un", "ejemplo", sep = " ")
?write()
x <- matrix(1:10, ncol = 5)
write(t(x))
write(x, "", sep = "\t")
?file()
Archivo <- file("test.data", "w")
?barplot()
require(grDevices) # for colours
tN <- table(Ni <- stats::rpois(100, lambda = 5))
r <- barplot(tN, col = rainbow(20))
#- type = "h" plotting *is* 'bar'plot
lines(r, tN, type = "h", col = "red", lwd = 2)

barplot(tN, space = 1.5, axisnames = FALSE,
        sub = "barplot(..., space= 1.5, axisnames = FALSE)")

barplot(VADeaths, plot = FALSE)
barplot(VADeaths, plot = FALSE, beside = TRUE)

mp <- barplot(VADeaths) # default
tot <- colMeans(VADeaths)
text(mp, tot + 3, format(tot), xpd = TRUE, col = "blue")
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend = rownames(VADeaths), ylim = c(0, 100))
title(main = "Death Rates in Virginia", font.main = 4)

hh <- t(VADeaths)[, 5:1]
mybarcol <- "gray20"
mp <- barplot(hh, beside = TRUE,
              col = c("lightblue", "mistyrose",
                      "lightcyan", "lavender"),
              legend = colnames(VADeaths), ylim = c(0,100),
              main = "Death Rates in Virginia", font.main = 4,
              sub = "Faked upper 2*sigma error bars", col.sub = mybarcol,
              cex.names = 1.5)
segments(mp, hh, mp, hh + 2*sqrt(1000*hh/100), col = mybarcol, lwd = 1.5)
stopifnot(dim(mp) == dim(hh))  # corresponding matrices
mtext(side = 1, at = colMeans(mp), line = -2,
      text = paste("Mean", formatC(colMeans(hh))), col = "red")

# Bar shading example
barplot(VADeaths, angle = 15+10*1:5, density = 20, col = "black",
        legend = rownames(VADeaths))
title(main = list("Death Rates in Virginia", font = 4))

# border :
barplot(VADeaths, border = "dark blue") 


# log scales (not much sense here):
barplot(tN, col = heat.colors(12), log = "y")
barplot(tN, col = gray.colors(20), log = "xy")

# args.legend
barplot(height = cbind(x = c(465, 91) / 465 * 100,
                       y = c(840, 200) / 840 * 100,
                       z = c(37, 17) / 37 * 100),
        beside = FALSE,
        width = c(465, 840, 37),
        col = c(1, 2),
        legend.text = c("A", "B"),
        args.legend = list(x = "topleft")
?boxplot()
boxplot(len ~ dose:supp, data = ToothGrowth,
        boxwex = 0.5, col = c("orange", "yellow"),
        main = "Guinea Pigs' Tooth Growth",
        xlab = "Vitamin C dose mg", ylab = "tooth length",
        sep = ":", lex.order = TRUE, ylim = c(0, 35), yaxs = "i")
?plot()
x <- seq(1,100, by = 2)
y <- seq(1,250, by = 5)
plot(x,y)