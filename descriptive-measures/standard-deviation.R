
# Exemplo de Desvio Padrão
# Example of Standard Deviation

x                   <- c(4, 5, 5, 6, 6, 7, 7, 8)
mean_x              <- mean(x)
deviation           <- x - mean_x
deviation_2         <- deviation^2

variance            <- sum(deviation_2) / (length(x) - 1)
standard_deviation  <- sqrt(variance) # ~1.3

#--------------------------------------------------------

sd(x) # ~1.3
