#
# EXEMPLO DE TAPPLY
#


data(iris)
tapply(iris$Sepal.Width, iris$Species, mean)
