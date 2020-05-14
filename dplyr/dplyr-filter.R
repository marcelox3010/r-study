#
# DPLYR FILTER
#
#install.packages("dplyr")

library(dplyr)

nrow(iris)

setosas <- iris %>% filter(Species == "setosa")
nrow(setosas) # somente setosas

setosasSepal5 <- iris %>% filter(Species == "setosa" & Sepal.Length > 5)
nrow(setosasSepal5) # somente setosas com Sepal.Length > 5 
