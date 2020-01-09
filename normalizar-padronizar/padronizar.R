
padronizar <- function(v){
  
  n               <- c()
  media           <- mean(v)
  desviopadrao    <- sd(v)
  
  for(i in 1:length(v)){
    
    n <- c(n, (v[i] - media) / (desviopadrao))
    
  }
  
  n
  
}

meuVetor             <- c(1:100)
meuVetorPadronizado  <- padronizar(meuVetor)

matrix(c(meuVetor, meuVetorPadronizado), ncol = 2)
