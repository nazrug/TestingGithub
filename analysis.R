####################################
## A very special analysis
## of the heart and body weight
## of cats
## Date: May 1 2016
## MRF
####################################


# load packages
library(dplyr)
library(tidyr)

# get data
library(MASS)
data(cats)
head(cats)

write.csv(cats, "data/catData.csv", row.names=FALSE)

# modeling the data ----
mod <- lm(Bwt ~ Hwt, data=cats)
summary(mod)

mod2 <- lm(Bwt ~ Hwt + Sex, data=cats)

AIC(mod, mod2)
