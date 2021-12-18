#BUBLE SORT FUNCTION
mgg_bubble_sort <- function(vetor, ordem="ASC"){
  
  for(minimo in 2:length(vetor)){
    
    for(i in length(vetor):minimo){
      
      # CASO A FUNÇÃO TENHA DESC NO PARÂMETRO ORDEM 
      if(ordem=="DESC") p_ordem <- vetor[i] < vetor[i-1]
      else p_ordem <- vetor[i] > vetor[i-1]
      
      if(p_ordem){
        
        # SE ELE ENTRAR NESTA CONDICIONAL ALGUMA VEZ 
        # SIGNIFICA QUE O VETOR ESTÁ DESORDENADO
        desordenado <- TRUE
        
        # TROCA ELEMENTOS DE POSIÇÃO
        tmp <- vetor[i-1]
        vetor[i-1] <- vetor[i]
        vetor[i] <- tmp
        
      }
      
    }
    
  }
  
  return(vetor)
  
}

#QUANTIDADE DE NÚMEROS PARA ORDENAR
qtd_elementos <- 1000

#NÚMERO INICIAL PARA AMOSTRA
numero_inicial_para_geracao_numeros <- 1

#NÚMERO FINAL PARA AMOSTRA
numero_final_para_geracao_numeros <- 1000

#CRIA VETOR DE NÚMEROS ALEATÓRIOS
vetor_numeros_para_ordenacao <- 
        
  sample(
    numero_inicial_para_geracao_numeros:numero_final_para_geracao_numeros, 
    qtd_elementos, 
    replace=FALSE
  )

vetor_numeros_para_ordenacao
mgg_bubble_sort(vetor_numeros_para_ordenacao)
mgg_bubble_sort(vetor_numeros_para_ordenacao, "DESC")

vetor_numeros_para_ordenacao
mgg_bubble_sort_2(vetor_numeros_para_ordenacao)
mgg_bubble_sort_2(vetor_numeros_para_ordenacao, "DESC")
