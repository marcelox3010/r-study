#
# DPLYR DISTINCT
#
#install.packages("dplyr")

library(dplyr)

nrow(iris)

iris %>% distinct(Species)

