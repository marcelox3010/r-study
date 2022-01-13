#
# BUBLE SORT FUNCTION
#
mgg_bubble_sort <- function(vetor){
  
  for(i in 2:length(vetor)){
    
    for(j in length(vetor):i){
      
      if(vetor[j] < vetor[j-1]){
        
        tmp <- vetor[j-1]
        vetor[j-1] <- vetor[j]
        vetor[j] <- tmp
        
      }
      
    }
    
  }
  
  vetor
  
}

# EXEMPLO

# QUANTIDADE DE NÚMEROS PARA ORDENAR
qtd_elementos <- 1000

# NÚMERO INICIAL PARA AMOSTRA
numero_inicial_para_geracao_numeros <- 1

# NÚMERO FINAL PARA AMOSTRA
numero_final_para_geracao_numeros <- 1000

# CRIA VETOR DE NÚMEROS ALEATÓRIOS
vetor_numeros_para_ordenacao <- 
        
  sample(
    numero_inicial_para_geracao_numeros:numero_final_para_geracao_numeros, 
    qtd_elementos, 
    replace=FALSE
  )

# IMPRIME VETOR PARA COMPARAR
vetor_numeros_para_ordenacao

# CHAMA FUNÇÃO BUBBLE SORT
mgg_bubble_sort(vetor_numeros_para_ordenacao)
