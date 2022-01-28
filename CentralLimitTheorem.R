#IDA Central Limit Theorem By Rajapreethi Rajendran
#Read Data
library("rafalib")
library("dplyr")
micePop <- read.cssv2(file= url("https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"), sep=",")
micePop$Bodyweight <- as.numeric(micePop$Bodyweight)

#Extract Female Mice in Chow Diet
chowPopulation <- filter(micePop,Sex == "F" & Diet == "chow")$Bodyweight 

# Plot of the population
populationDensity <- density(chowPopulation)
plot(populationDensity,xlab = "Weight",main="Distribution of Female Chow Population")

#Mean and Standard deviation of the Population
populationMean <- mean(chowPopulation)
populationSD <- sd(chowPopulation)

#Sample of 30
sample_30 <- sample(chowPopulation, 30)
density_30 <- density(sample_30)
plot(density_30,xlab = "Weight", main="Sample Size = 30")

#Mean and SD of Sample 
mu_sample30 <- mean(sample_30)
sd_sample30 <- sd(sample_30)

#Sample of 50
sample_50 <- sample(chowPopulation, 50)
density_50 <- density(sample_50)
plot(density_50, xlab = "Weight",main="Sample Size = 50")

#Mean and SD of Sample 50
mu_sample50 <- mean(sample_50)
sd_sample50 <- sd(sample_50)

#Sample of 100
sample_100 <- sample(chowPopulation, 100)
density_100 <- density(sample_100)
plot(density_100,xlab = "Weight",main="Sample Size = 100")

#Mean and SD of Sample 50
mu_sample100 <- mean(sample_100)
sd_sample100 <- sd(sample_100)

#Print
populationMean
mu_sample30
mu_sample50
mu_sample100
populationSD
sd_sample30
sd_sample50
sd_sample100




