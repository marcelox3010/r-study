#
# EXEMPLO DE APPLY
#

a <- matrix(1:9, nrow = 3, ncol = 3)
b <- data.frame(c(1,2,3), c(4,5,6), c(7,8,9))

a
apply(a, 1, sum) # SOMA LINHAS
apply(a, 2, sum) # SOMA COLUNAS

b
apply(b, 1, sum) # SOMA LINHAS
apply(b, 2, sum) # SOMA COLUNAS
