
#QUESTÃO 5

tamanho_familia         <- c(1, 2, 3, 4, 5, 6, 7, 8)
frequencia_familia      <- c(1, 3, 6, 13, 11, 4, 0, 2)
percentagem_de_familias <- c(2.5, 7.5, 15.0, 32.5, 27.5, 10, 0, 5)

#media

# Σ (x*f)/ n

media <- sum(tamanho_familia*frequencia_familia) / sum(frequencia_familia)  # 4.3
media

#desvio padrão

# √ ((Σ(x²*f)) - n * media² / n -1)

sqrt((sum(tamanho_familia^2 * frequencia_familia) - (sum(frequencia_familia) * (media^2))) / (sum(frequencia_familia) - 1)) # 1.45

