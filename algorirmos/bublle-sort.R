#QUANTIDADE DE NÚMEROS PARA ORDENAR
qtd_elementos <- 100

#NÚMERO INICIAL PARA AMOSTRA
n1 <- 1

#NÚMERO FINAL PARA AMOSTRA
n2 <- 1000000

#CRIA VETOR DE NÚMEROS ALEATÓRIOS
vetor_numeros_para_ordenacao <- sample(n1:n2, qtd_elementos, replace=TRUE)

#BUBLE SORT
desordenado <- TRUE

while(desordenado){
  
  desordenado <- FALSE
  
  for(i in 1:length(vetor_numeros_para_ordenacao)-1){
    
    if(vetor_numeros_para_ordenacao[i] > vetor_numeros_para_ordenacao[i+1]){
      
      print(i)
      tmp <- vetor_numeros_para_ordenacao[i+1]
      vetor_numeros_para_ordenacao[i] <- vetor_numeros_para_ordenacao[i+1]
      vetor_numeros_para_ordenacao[i+1] <- tmp
      desordenado <- TRUE
      
    }
    
  }
  
}

v
