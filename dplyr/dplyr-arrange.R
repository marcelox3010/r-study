#
# DPLYR ARRANGE
#
#install.packages("dplyr")

library(dplyr)

nrow(iris)
names(iris)
iris %>% arrange(Species, desc(Sepal.Length)) # ordena por espécie e sépala decrescente

