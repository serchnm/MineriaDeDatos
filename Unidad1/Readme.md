### Unit1

---

- [Practice1](#Practice1) | [Practice2](#Practice2) | [Practice3](#Practice3)
- [Practice4](#Practice4) | [Practice5](#Practice5)

### Practice1

#### in the practice a script was created can count how many of these numbers fall betwen -1 and 1 and divide the total of the numbers of N

                Ejercicio 1
                x <- seq(-10, 10, by = 1)
                dnorm(x,mean = 0, sd = 1)
                y <- dnorm(x,mean = 0, sd = 1)
                plot(x,y)
                for(i in y:21)
                {
                print(y)
                if(y<=1&&i>=-1)
                    result < print("este esta entre -1 y 1", y)
                }
                Ejercicio 1 Correcto
                x<-rnorm(50)
                y <- dnorm(x,mean = 0, sd = 1)
                plot(x,y)
                count <- 0
                for(i in rnorm(50))
                {
                count <- count+1
                    print(count)
                if(i<=1&&i>=-1){
                    print(i)
                    print("^ este esta entre -1 y 1")
                }
                    else
                    {
                    print(i)
                    print("este no esta en el rango")
                }
                }

#### OutPut

            [1] 1
            [1] 1.328204
            [1] "este no esta en el rango"
            [1] 2
            [1] 0.5097547
            [1] "^ este esta entre -1 y 1"
            [1] 3
            [1] 0.9652023
            [1] "^ este esta entre -1 y 1"
            [1] 4
            [1] 0.4792938
            [1] "^ este esta entre -1 y 1"
            [1] 5
            [1] -1.102563
            [1] "este no esta en el rango"
            [1] 6
            [1] -0.1866097
            [1] "^ este esta entre -1 y 1"
            [1] 7
            [1] -0.2588317
            [1] "^ este esta entre -1 y 1"
            [1] 8
            [1] 1.308806
            [1] "este no esta en el rango"
            [1] 9
            [1] -2.027613
            [1] "este no esta en el rango"
            [1] 10
            [1] 0.4468982
            [1] "^ este esta entre -1 y 1"
            [1] 11
            [1] -2.258194
            [1] "este no esta en el rango"
            [1] 12
            [1] 0.1488937
            [1] "^ este esta entre -1 y 1"
            [1] 13
            [1] 0.4907025
            [1] "^ este esta entre -1 y 1"
            [1] 14
            [1] 0.5490004
            [1] "^ este esta entre -1 y 1"
            [1] 15
            [1] -0.6813539
            [1] "^ este esta entre -1 y 1"
            [1] 16
            [1] 0.5065938
            [1] "^ este esta entre -1 y 1"
            [1] 17
            [1] -0.3412727
            [1] "^ este esta entre -1 y 1"
            [1] 18
            [1] 1.678213
            [1] "este no esta en el rango"
            [1] 19
            [1] 1.957124
            [1] "este no esta en el rango"
            [1] 20
            [1] -1.263697
            [1] "este no esta en el rango"
            [1] 21
            [1] -0.8699992
            [1] "^ este esta entre -1 y 1"
            [1] 22
            [1] 0.8450208
            [1] "^ este esta entre -1 y 1"
            [1] 23
            [1] -0.2354948
            [1] "^ este esta entre -1 y 1"
            [1] 24
            [1] 0.9743049
            [1] "^ este esta entre -1 y 1"
            [1] 25
            [1] -0.2718549
            [1] "^ este esta entre -1 y 1"
            [1] 26
            [1] -0.8251252
            [1] "^ este esta entre -1 y 1"
            [1] 27
            [1] 1.956203
            [1] "este no esta en el rango"
            [1] 28
            [1] 2.606618
            [1] "este no esta en el rango"
            [1] 29
            [1] 1.166609
            [1] "este no esta en el rango"
            [1] 30
            [1] 1.173921
            [1] "este no esta en el rango"
            [1] 31
            [1] -0.5153447
            [1] "^ este esta entre -1 y 1"
            [1] 32
            [1] 0.3736568
            [1] "^ este esta entre -1 y 1"
            [1] 33
            [1] 0.7213315
            [1] "^ este esta entre -1 y 1"
            [1] 34
            [1] -0.2073686
            [1] "^ este esta entre -1 y 1"
            [1] 35
            [1] -0.6672021
            [1] "^ este esta entre -1 y 1"
            [1] 36
            [1] 0.07376368
            [1] "^ este esta entre -1 y 1"
            [1] 37
            [1] -1.408692
            [1] "este no esta en el rango"
            [1] 38
            [1] 0.5265304
            [1] "^ este esta entre -1 y 1"
            [1] 39
            [1] 0.1509868
            [1] "^ este esta entre -1 y 1"
            [1] 40
            [1] 0.256534
            [1] "^ este esta entre -1 y 1"
            [1] 41
            [1] 0.2574411
            [1] "^ este esta entre -1 y 1"
            [1] 42
            [1] 1.164907
            [1] "este no esta en el rango"
            [1] 43
            [1] 0.4598488
            [1] "^ este esta entre -1 y 1"
            [1] 44
            [1] 0.361133
            [1] "^ este esta entre -1 y 1"
            [1] 45
            [1] 1.129593
            [1] "este no esta en el rango"
            [1] 46
            [1] 2.038925
            [1] "este no esta en el rango"
            [1] 47
            [1] -2.971596
            [1] "este no esta en el rango"
            [1] 48
            [1] -0.7385723
            [1] "^ este esta entre -1 y 1"
            [1] 49
            [1] 0.67522
            [1] "^ este esta entre -1 y 1"
            [1] 50
            [1] 0.9226553
            [1] "^ este esta entre -1 y 1"
            > Res <- Resultado/count
            > print(Res)
            [1] 0.66

### Practice2

#### In this Practice we work with a lot of functions to be exactly 20 but in this practice is a lot of result for each function, in that case this is the code from our work.

            # Practice2 find 20 more funtions in R and make an example of it.

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

            ?abs()
            abs(-5151516193)
            5151516193
            ?all()
            all(Points, Games)

            ?length()
            length(datoss)

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

### Practice3

#### In this practice we learn about the profits how to use some vectors and functions for our curve of learning.

            #Practice3
            revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
            expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
            ##
            profit <- revenue - expenses
            profit
            ##
            tax <- round(profit * .30, 2)
            tax
            ##
            profitAt <- profit - tax
            profitAt
            ##
            profit.margin <- round(profitAt / revenue, 2) * 100
            profit.margin
            ##
            mean_pat <- mean(profitAt)
            mean_pat
            ##
            good.months <- mean_pat  <= profitAt
            good.months
            ##
            bad.months <- !good.months
            bad.months
            ##
            best.month <- profitAt == max(profitAt)
            best.month
            ##
            worst.month <- profitAt == min(profitAt)
            worst.month
            ##
            revenue.1000 <- round(revenue / 1000, 0)
            expenses.1000 <- round(expenses / 1000, 0)
            profit.1000 <- round(profit / 1000, 0)
            profit.after.tax.1000 <-round(profitAt / 1000, 0)
            ##
            revenue.1000
            expenses.1000
            profit.1000
            profit.after.tax.1000
            profit.margin
            good.months
            bad.months
            best.month
            worst.month
            ##
            M <- rbind(
            revenue.1000,
            expenses.1000,
            profit.1000,
            profit.after.tax.1000,
            profit.margin,
            good.months,
            bad.months,
            best.month,
            worst.month
            )
            M

### Practice4

#### A fan from the NBA wants to know information about the throws on each player from every game, like a fan this is a code to know everthing about that information

            #Free Trows
            KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
            JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
            LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
            CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
            DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
            ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
            ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
            KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
            DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
            DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)
            #Matrix for Free Throws
            #Bind the given vectors to form the matrix
            FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
            #Remove vectors - we don't need them anymore
            rm(KobeBryant_FT, JoeJohnson_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, LeBronJames_FT, ChrisPaul_FT, DerrickRose_FT, DwayneWade_FT, KevinDurant_FT)
            #Rename the columns
            colnames(FreeThrows) <- Seasons
            #Rename the rows
            rownames(FreeThrows) <- Players

            #Check the matrix
            FreeThrows

            #Free Trows Attempts
            KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
            JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
            LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
            CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
            DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
            ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
            ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
            KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
            DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
            DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)
            #Matrix for Free Throw Attempts
            #Bind the given vectors to form the matrix
            FreeThrowAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
            #Remove vectors - we don't need them anymore
            rm(KobeBryant_FTA, JoeJohnson_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, LeBronJames_FTA, ChrisPaul_FTA, DerrickRose_FTA, DwayneWade_FTA, KevinDurant_FTA)
            #Rename the columns
            colnames(FreeThrowAttempts) <- Seasons
            #Rename the rows
            rownames(FreeThrowAttempts) <- Players

            #Check the matrix
            FreeThrowAttempts

            #Re-create the plotting function
            myplot <- function(z, who=1:10) {
            matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
            legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
            }

            #Visualize the new matrices
            myplot(FreeThrows)
            myplot(FreeThrowAttempts)

            #Part 1 - Free Throw Attempts Per Game
            #(You will need the Games matrix)
            myplot(FreeThrowAttempts/Games)
            #Notice how Chris Paul gets fewer attempts per game

            #Part 2 - Free Throw Accuracy
            myplot(FreeThrows/FreeThrowAttempts)
            #And yet Chris Paul's accuracy is one of the highest
            #Chances are his team would get more points if he had more FTA's
            #Also notice that Dwight Howard's FT Accuracy is extremely poor
            #compared to other players. If you recall, Dwight Howard's
            #Field Goal Accuracy was exceptional:
            myplot(FieldGoals/FieldGoalAttempts)
            #How could this be? Why is there such a drastic difference?
            #We will see just now...

            #Part 3 - Player Style Patterns Excluding Free Throws
            myplot((FieldGoals-FreeTrows)/Points)

#### Output

            #Free Trows
            > KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
            > JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
            > LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
            > CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
            > DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
            > ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
            > ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
            > KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
            > DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
            > DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)
            > #Matrix for Free Throws
            > #Bind the given vectors to form the matrix
            > FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
            > #Remove vectors - we don't need them anymore
            > rm(KobeBryant_FT, JoeJohnson_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, LeBronJames_FT, ChrisPaul_FT, DerrickRose_FT, DwayneWade_FT, KevinDurant_FT)
            > #Rename the columns
            > colnames(FreeThrows) <- Seasons
            > #Rename the rows
            > rownames(FreeThrows) <- Players
            > #Check the matrix
            > FreeThrows
                        2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
            KobeBryant      696  667  623  483  439  483  381  525   18  196
            JoeJohnson      261  235  316  299  220  195  158  132  159  141
            LeBronJames     601  489  549  594  593  503  387  403  439  375
            CarmeloAnthony  573  459  464  371  508  507  295  425  459  189
            DwightHoward    356  390  529  504  483  546  281  355  349  143
            ChrisBosh       474  463  472  504  470  384  229  241  223  179
            ChrisPaul       394  292  332  455  161  337  260  286  295  289
            KevinDurant     209  209  391  452  756  594  431  679  703  146
            DerrickRose     146  146  146  197  259  476  194    0   27  152
            DwayneWade      629  432  354  590  534  494  235  308  189  284
            > #Free Trows Attempts
            > KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
            > JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
            > LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
            > CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
            > DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
            > ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
            > ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
            > KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
            > DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
            > DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)
            > #Matrix for Free Throw Attempts
            > #Bind the given vectors to form the matrix
            > FreeThrowAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
            > #Remove vectors - we don't need them anymore
            > rm(KobeBryant_FTA, JoeJohnson_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, LeBronJames_FTA, ChrisPaul_FTA, DerrickRose_FTA, DwayneWade_FTA, KevinDurant_FTA)
            > #Rename the columns
            > colnames(FreeThrowAttempts) <- Seasons
            > #Rename the rows
            > rownames(FreeThrowAttempts) <- Players
            > #Check the matrix
            > FreeThrowAttempts
                        2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
            KobeBryant      819  768  742  564  541  583  451  626   21  241
            JoeJohnson      330  314  379  362  269  243  186  161  195  176
            LeBronJames     814  701  771  762  773  663  502  535  585  528
            CarmeloAnthony  709  568  590  468  612  605  367  512  541  237
            DwightHoward    598  666  897  849  816  916  572  721  638  271
            ChrisBosh       581  590  559  617  590  471  279  302  272  232
            ChrisPaul       465  357  390  524  190  384  302  323  345  321
            KevinDurant     256  256  448  524  840  675  501  750  805  171
            DerrickRose     205  205  205  250  338  555  239    0   32  187
            DwayneWade      803  535  467  771  702  652  297  425  258  370
            > #Re-create the plotting function
            > myplot <- function(z, who=1:10) {
            +   matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
            +   legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
            + }
            > #Visualize the new matrices
            > myplot(FreeThrows)
            > myplot(FreeThrowAttempts)
            > #Part 1 - Free Throw Attempts Per Game
            > #(You will need the Games matrix)
            > myplot(FreeThrowAttempts/Games)
            > #Part 2 - Free Throw Accuracy
            > myplot(FreeThrows/FreeThrowAttempts)
            > #And yet Chris Paul's accuracy is one of the highest
            > #Chances are his team would get more points if he had more FTA's
            > #Also notice that Dwight Howard's FT Accuracy is extremely poor
            > #compared to other players. If you recall, Dwight Howard's
            > #Field Goal Accuracy was exceptional:
            > myplot(FieldGoals/FieldGoalAttempts)
            > #Part 3 - Player Style Patterns Excluding Free Throws
            > myplot((FieldGoals-FreeTrows)/Points)

### Practice5

            ?read.csv()
            #read.csv("/home/alex/Documentos/DataMining/Dataframes/Demographic-Data.csv")
            read.csv("/home/sergio/Documents/DataMining/Dataframes/Demographic-Data.csv")
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
            #setwd("/home/alex/Documentos/DataMining/Dataframes")
            setwd("/home/sergio/Documents/DataMining/Dataframes")
            getwd()
            rm(stats)
            stats <- read.csv("Demographic-Data.csv")
            stats
            is.data.frame(stats)
            nrow(stats)
            ncol(stats)
            head(stats, n=10)
            tail(stats, n=8)
            str(stats)
            summary(stats)

            #------Using the $ sing
            stats
            head(stats)
            stats[3,3]
            stats[3, "Birth.rate"]
            typeof(stats)
            stats$Internet.users
            stats$Internet.users[2]
            stats[ , "Internet.users"]
            levels(stats$Income.Group)

            #------Basic operations with dataframes-----------------------
            stats[1:10, ] #subsetting
            stats[3:9, ]
            stats[c(4, 100)]
            is.data.frame(stats[1, ])
            is.data.frame(stats[,1])
            is.data.frame(stats[,1, drop=F])
            stats[,1, drop=F]

            #-------Multiply columns
            stats$Birth.rate * stats$Internet.users
            stats$Birth.rate + stats$Internet.users

            #-------Add Columns
            head(stats)
            stats$BRbyIU <- stats$Birth.rate * stats$Internet.users
            head(stats)

            #------Thigs to know
            stats$xyz <- 1:5
            head(stats, n=12)

            #------Remove columns
            head(stats)
            stats$BRbyIU <- NULL
            stats$xyz <- NULL

            #------Filtering Data Frames -----------------------  ****
            head(stats)
            filter <- stats$Internet.users < 2 #TRUE
            filter
            stats[filter,]

            stats[stats$Birth.rate > 40,]
            stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
            stats[stats$Income.Group == "High income",]
            levels(stats$Income.Group)

            #Practice
            #Filter countries by Low income
            filter <- stats$Income.Group == "Low income"
            stats[filter,]
            #Filter countries by Lower middle income
            filter <- stats$Income.Group == "Lower middle income"
            stats[filter,]
            #Filter countries by Upper middle income
            stats[stats$Country.Name == "Upper middle income",]
            #Filter by countrie Malta
            stats[stats$Country.Name == "Malta",]
            #Filter by countrie Qatar
            stats[stats$Country.Name == "Qatar",]
            #Filter by countrie Netherlands
            stats[stats$Country.Name == "Netherlands",]
            #Filter by countrie Norway
            stats[stats$Country.Name == "Norway",]

#### Output

             Practice
             Filter countries by Low income
             filter <- stats$Income.Group == "Low income"
             stats[filter,]
                            Country.Name Country.Code Birth.rate Internet.users Income.Group
            2                Afghanistan          AFG     35.253           5.90   Low income
            12                   Burundi          BDI     44.151           1.30   Low income
            14                     Benin          BEN     36.440           4.90   Low income
            15              Burkina Faso          BFA     40.551           9.10   Low income
            30  Central African Republic          CAF     34.076           3.50   Low income
            39                   Comoros          COM     34.326           6.50   Low income
            53                   Eritrea          ERI     34.800           0.90   Low income
            56                  Ethiopia          ETH     32.925           1.90   Low income
            65                    Guinea          GIN     37.337           1.60   Low income
            66               Gambia, The          GMB     42.525          14.00   Low income
            67             Guinea-Bissau          GNB     37.503           3.10   Low income
            78                     Haiti          HTI     25.345          10.60   Low income
            94                  Cambodia          KHM     24.462           6.80   Low income
            100                  Liberia          LBR     35.521           3.20   Low income
            112               Madagascar          MDG     34.686           3.00   Low income
            116                     Mali          MLI     44.138           3.50   Low income
            121               Mozambique          MOZ     39.705           5.40   Low income
            124                   Malawi          MWI     39.459           5.05   Low income
            128                    Niger          NER     49.661           1.70   Low income
            133                    Nepal          NPL     20.923          13.30   Low income
            149                   Rwanda          RWA     32.689           9.00   Low income
            155             Sierra Leone          SLE     36.729           1.70   Low income
            157                  Somalia          SOM     43.891           1.50   Low income
            159              South Sudan          SSD     37.126          14.10   Low income
            168                     Chad          TCD     45.745           2.30   Low income
            169                     Togo          TGO     36.080           4.50   Low income
            178                 Tanzania          TZA     39.518           4.40   Low income
            179                   Uganda          UGA     43.474          16.20   Low income
            193         Congo, Dem. Rep.          COD     42.394           2.20   Low income
            195                 Zimbabwe          ZWE     35.715          18.50   Low income
            > #Filter countries by Lower middle income
            > filter <- stats$Income.Group == "Lower middle income"
            > stats[filter,]
                        Country.Name Country.Code Birth.rate Internet.users        Income.Group
            7                 Armenia          ARM     13.308        41.9000 Lower middle income
            16             Bangladesh          BGD     20.142         6.6300 Lower middle income
            24                Bolivia          BOL     24.236        36.9400 Lower middle income
            28                 Bhutan          BTN     18.134        29.9000 Lower middle income
            35          Cote d'Ivoire          CIV     37.320         8.4000 Lower middle income
            36               Cameroon          CMR     37.236         6.4000 Lower middle income
            37            Congo, Rep.          COG     37.011         6.6000 Lower middle income
            40             Cabo Verde          CPV     21.625        37.5000 Lower middle income
            47               Djibouti          DJI     25.486         9.5000 Lower middle income
            52       Egypt, Arab Rep.          EGY     28.032        29.4000 Lower middle income
            60  Micronesia, Fed. Sts.          FSM     23.511        27.8000 Lower middle income
            63                Georgia          GEO     13.332        43.3000 Lower middle income
            64                  Ghana          GHA     33.131        12.3000 Lower middle income
            72              Guatemala          GTM     27.465        19.7000 Lower middle income
            74                 Guyana          GUY     18.885        35.0000 Lower middle income
            76               Honduras          HND     21.593        17.8000 Lower middle income
            80              Indonesia          IDN     20.297        14.9400 Lower middle income
            81                  India          IND     20.291        15.1000 Lower middle income
            92                  Kenya          KEN     35.194        39.0000 Lower middle income
            93        Kyrgyz Republic          KGZ     27.200        23.0000 Lower middle income
            95               Kiribati          KIR     29.044        11.5000 Lower middle income
            98                Lao PDR          LAO     27.051        12.5000 Lower middle income
            104             Sri Lanka          LKA     17.863        21.9000 Lower middle income
            105               Lesotho          LSO     28.738         5.0000 Lower middle income
            110               Morocco          MAR     21.023        56.0000 Lower middle income
            111               Moldova          MDA     12.141        45.0000 Lower middle income
            118               Myanmar          MMR     18.119         1.6000 Lower middle income
            122            Mauritania          MRT     33.801         6.2000 Lower middle income
            129               Nigeria          NGA     40.045        38.0000 Lower middle income
            130             Nicaragua          NIC     20.788        15.5000 Lower middle income
            136              Pakistan          PAK     29.582        10.9000 Lower middle income
            139           Philippines          PHL     23.790        37.0000 Lower middle income
            140      Papua New Guinea          PNG     28.899         6.5000 Lower middle income
            151                 Sudan          SDN     33.477        22.7000 Lower middle income
            152               Senegal          SEN     38.533        13.1000 Lower middle income
            154       Solomon Islands          SLB     30.578         8.0000 Lower middle income
            156           El Salvador          SLV     17.476        23.1093 Lower middle income
            160 Sao Tome and Principe          STP     34.537        23.0000 Lower middle income
            165             Swaziland          SWZ     30.093        24.7000 Lower middle income
            167  Syrian Arab Republic          SYR     24.043        26.2000 Lower middle income
            171            Tajikistan          TJK     30.792        16.0000 Lower middle income
            173           Timor-Leste          TLS     35.755         1.1000 Lower middle income
            180               Ukraine          UKR     11.100        41.0000 Lower middle income
            183            Uzbekistan          UZB     22.500        38.2000 Lower middle income
            187               Vietnam          VNM     15.537        43.9000 Lower middle income
            188               Vanuatu          VUT     26.739        11.3000 Lower middle income
            189    West Bank and Gaza          PSE     30.394        46.6000 Lower middle income
            190                 Samoa          WSM     26.172        15.3000 Lower middle income
            191           Yemen, Rep.          YEM     32.947        20.0000 Lower middle income
            194                Zambia          ZMB     40.471        15.4000 Lower middle income
            > #Filter countries by Upper middle income
            > stats[stats$Country.Name == "Upper middle income",]
            [1] Country.Name   Country.Code   Birth.rate     Internet.users Income.Group
            <0 rows> (or 0-length row.names)
            > #Filter by countrie Malta
            > stats[stats$Country.Name == "Malta",]
                Country.Name Country.Code Birth.rate Internet.users Income.Group
            117        Malta          MLT        9.5        68.9138  High income
            > #Filter by countrie Qatar
            > stats[stats$Country.Name == "Qatar",]
                Country.Name Country.Code Birth.rate Internet.users Income.Group
            146        Qatar          QAT      11.94           85.3  High income
            > #Filter by countrie Netherlands
            > stats[stats$Country.Name == "Netherlands",]
                Country.Name Country.Code Birth.rate Internet.users Income.Group
            131  Netherlands          NLD       10.2        93.9564  High income
            > #Filter by countrie Norway
            > stats[stats$Country.Name == "Norway",]
                Country.Name Country.Code Birth.rate Internet.users Income.Group
            132       Norway          NOR       11.6        95.0534  High income
