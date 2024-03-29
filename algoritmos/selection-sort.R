#
# SELECTION SORT FUNCTION
#
mgg_selection_sort <- function(vetor){

  for(i in 1:length(vetor)){
    
    min <- vetor[i]
    
    for(j in i:length(vetor)){
      
      if(min > vetor[j]){
        
        min <- vetor[j]
        indice_menor_numero <- j
        
      }
      
    }

    if(!is.na(indice_menor_numero)){
      
      tmp <- vetor[i]
      vetor[i] <- vetor[indice_menor_numero]
      vetor[indice_menor_numero] <- tmp
      
    }
    
  }
  
  vetor
  
}

# EXEMPLO

# QUANTIDADE DE NÚMEROS PARA ORDENAR
qtd_elementos <- 10000

# NÚMERO INICIAL PARA AMOSTRA
numero_inicial_para_geracao_numeros <- 1

# NÚMERO FINAL PARA AMOSTRA
numero_final_para_geracao_numeros <- 10000

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
mgg_selection_sort(vetor_numeros_para_ordenacao)
