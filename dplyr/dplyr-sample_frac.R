#
# DPLYR sample_frac
#
#install.packages("dplyr")

library(dplyr)

names(iris)
dim(iris)
sample_frac(iris, 0.1) # 15 porque é 10% de 150 (quantidade de observações)
sample_n(iris, 10) # 10 amostras
