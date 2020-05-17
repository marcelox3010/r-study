#
# DPLYR SLICE
#
#install.packages("dplyr")

library(dplyr)

names(iris)
head(iris, 10)
iris %>% slice(2:4)

