library("dplyr")

names(iris)
iris %>% count(Species)
iris %>% count(Species, sort=T)
iris %>% count(Species, wt = Sepal.Length, sort=T)

