#
# DPLYR SLICE
#
#install.packages("dplyr")

library(dplyr)

names(iris)
iris %>% pull(Species) # Retorna vetor
