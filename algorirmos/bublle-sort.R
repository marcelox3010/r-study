#BUBLE SORT FUNCTION
bubble_sort_gadelha <- function(vetor, ordem="ASC"){
  
  desordenado <- TRUE
  
  while(desordenado){
    
    desordenado <- FALSE
    
    for(i in 1:(length(vetor)-1)){
      
      # CASO A FUNÇÃO TENHA DESC NO PARÂMETRO ORDEM 
      if(ordem=="DESC") p_ordem <- vetor[i] < vetor[i+1]
      else p_ordem <- vetor[i] > vetor[i+1]
      
      if(p_ordem){
        
        # SE ELE ENTRAR NESSE ALGUMA VEZ SIGNIFICA QUE O VETOR ESTÁ DESORDENADO
        desordenado <- TRUE
        
        # TROCA ELEMENTOS DE POSIÇÃO
        tmp <- vetor[i+1]
        vetor[i+1] <- vetor[i]
        vetor[i] <- tmp
        
      }
      
    }
    
  }
  
  return(vetor)
  
}

#QUANTIDADE DE NÚMEROS PARA ORDENAR
qtd_elementos <- 100

#NÚMERO INICIAL PARA AMOSTRA
numero_inicial_para_geracao_numeros <- 1

#NÚMERO FINAL PARA AMOSTRA
numero_final_para_geracao_numeros <- 1000

#CRIA VETOR DE NÚMEROS ALEATÓRIOS
vetor_numeros_para_ordenacao <- 
        
  sample(
    numero_inicial_para_geracao_numeros:numero_final_para_geracao_numeros, 
    qtd_elementos, 
    replace=TRUE
  )

bubble_sort_gadelha(vetor_numeros_para_ordenacao)
bubble_sort_gadelha(vetor_numeros_para_ordenacao, "DESC")
