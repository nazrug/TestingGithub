####################################
## A very special analysis
## of the heart and body weight
## of cats: figures
## Date: May 1 2016
## MRF
####################################


# load packages
library(dplyr)
library(tidyr)
library(ggplot2)

# get data
library(MASS)
data(cats)
head(cats)

# source ggplot scater theme I like to use
source('https://raw.githubusercontent.com/OHI-Science/ohiprep/master/src/R/scatterTheme.txt')


ggplot(cats, aes(x=Bwt, y=Hwt, color=Sex)) +
  geom_point(size=3, shape=19, alpha=0.5) +
  stat_smooth(method = lm, se=FALSE, size=1) +
  labs(x="Body weight, kg", y="Heart weight, g") +
  scale_color_manual(values =c("gray45", "orange")) +
  guides(color=FALSE) +
  annotate('text', label=c('females', 'males'),
            x=c(2.2, 3.2) , y=c(13, 17) , 
           colour= c("gray45", "orange"),
           size = 6) +
  scatterTheme 

ggsave('figures/scatterPlot.png', height=8, width=8)
