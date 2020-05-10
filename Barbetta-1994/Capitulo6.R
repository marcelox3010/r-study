##########################
##########################
# DADOS ##################
##########################
##########################

turma_a <- c(4,5,5,6,6,7,7,8)
turma_b <- c(1,2,4,6,6,9,10,10)
turma_c <- c(0,6,7,7,7,7.5,7.5)
turma_d <- c(7,7,7,7,7,7,7)

#IDH

municipios <- c(
  "Antônio Carlos",  "Biguaçu",  "Florianópolis",
  "Governador Celso Ramos",  "Palhoça",  "Paulo Lopes",
  "Santo Amaro da Imperatriz",  "São José",  "São Pedro de Alcântera")

populacao <- c(6434,  48077,  343315,  11598,  102742,  5924,  15708,  173559,  3584)

idh <- c(0.83,  0.82,  0.88,  0.79,  0.82,  0.76,  0.84,  0.85,  0.8)

microRegiaoFlorianopolis <- data.frame(municipios, populacao, idh)

##########################
##########################
# DESVIO PADRÃO FÓRMULAS #
##########################
##########################

sd(turma_a)
# FÓRMULA 1
sqrt((sum((turma_a - mean(turma_a))^2)) / (length(turma_a) - 1))
#FÓRMULA 2
sqrt(((sum(turma_a^2)) - (length(turma_a) * (mean(turma_a)^2))) / (length(turma_a) - 1))
#FÓRMULA 3
turma_a_unicos <- unique(turma_a)
turma_a_unicos_freq <- as.vector(table(turma_a))
sqrt(((sum(turma_a_unicos^2 * turma_a_unicos_freq)) - (length(turma_a) * (mean(turma_a)^2))) / (length(turma_a) - 1))

##########################
##########################
# MÉDIA PONDERADA ########
##########################
##########################

#Média Simples

sum(microRegiaoFlorianopolis$idh) / length(microRegiaoFlorianopolis$idh)

#Média Ponderada

sum(microRegiaoFlorianopolis$idh * microRegiaoFlorianopolis$populacao) / sum(microRegiaoFlorianopolis$populacao)

##########################
##########################
# QUESTÕES ###############
##########################
##########################

# Questão 1

sd(turma_b)
sd(turma_c)

# Questão 2

mean(turma_d)
sd(turma_d)

# Questão 4 

x <- c(7,8,6,10,5,9,4,12,7,8)
mean(x)
sd(x)

# Questão 5

tamanho_familias      <- c(1,2,3,4,5,6,7,8)
frequencia_familias   <- c(1,3,6,13,11,4,0,2)
percentagem_familias  <- c(2.5,7.5,15,32.5,27.5,10,0,5)

familias <- data.frame(tamanho_familias, frequencia_familias, percentagem_familias)

media <- sum(familias$frequencia_familias * familias$tamanho_familias) / sum(familias$frequencia_familias)
media

desvioPadrao <- sqrt(((sum(familias$tamanho_familias^2 * familias$frequencia_familias)) - (sum(familias$frequencia_familias) * (media^2))) / (sum(familias$frequencia_familias) - 1))

desvioPadrao

# Questão 6
rotulos <- c("40 |- 50", "50 |- 60", "60 |- 70", "70 |- 80", "80 |- 90", "90 |- 100")
p_medio <- c(45,55,65,75,85,95)
f_muni  <- c(1,5,8,6,12,9)
dados   <- data.frame(rotulos, p_medio, f_muni)

media_q6 = 76.75

barplot(data=dados,
        f_muni~p_medio,
        names.arg = rotulos,
        ylab = "Quantidade de Famílias",
        main="Histograma Famílias")


# Questão 10

a <- c(15,9,7,20,18,19,23,32,14,10,11)
b <- c(15,9,7,20,18,19,23,32,15,10,11,16)

median(a)
mean(a)
quantile(a)
summary(a)

median(b)
mean(b)
quantile(b)
summary(b)




