#
# DPLYR SELECT
#
#install.packages("dplyr")

library(dplyr)

names(iris)
iris %>% select(Sepal.Length)
iris %>% select(Sepal.Length, Species)
