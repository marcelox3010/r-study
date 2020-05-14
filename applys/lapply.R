#
# EXEMPLO DE LAPPLY
#

movies        <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower  <- lapply(movies, tolower)
str(movies_lower)

a <- list(c(1,2,3), matrix(1:10, nrow=2, ncol=5), data.frame(c(1,2,3), c(4,5,6), c(7,8,9)))
lapply(a, sum)
