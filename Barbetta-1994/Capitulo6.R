#DADOS
turma_a <- c(4,5,5,6,6,7,7,8)
turma_b <- c(1,2,4,6,6,9,10,10)
turma_c <- c(0,6,7,7,7,7.5,7.5)
turma_d <- c(7,7,7,7,7,7,7)

sd(turma_a)
# FÓRMULA 1
sqrt((sum((turma_a - mean(turma_a))^2)) / (length(turma_a) - 1))
#FÓRMULA 2
sqrt(((sum(turma_a^2)) - (length(turma_a) * (mean(turma_a)^2))) / (length(turma_a) - 1))
#FÓRMULA 3
turma_a_unicos <- unique(turma_a)
turma_a_unicos_freq <- as.vector(table(turma_a))
sqrt(((sum(turma_a_unicos^2 * turma_a_unicos_freq)) - (length(turma_a) * (mean(turma_a)^2))) / (length(turma_a) - 1))

#Questão 1

sd(turma_b)
sd(turma_c)

#Questão 2

mean(turma_d)
sd(turma_d)

#Questão 3

sd(turma_a) # FÓRMULA 1
sqrt(((sum(turma_a^2)) - (length(turma_a) * (mean(turma_a)^2))) / (length(turma_a) - 1)) #FÓRMULA 2


