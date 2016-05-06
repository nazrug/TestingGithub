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

# modeling the data ----
mod <- lm(Hwt ~ Bwt, data=cats)
summary(mod)

mod2 <- lm(Hwt ~ Bwt + Sex, data=cats)

AIC(mod, mod2)
