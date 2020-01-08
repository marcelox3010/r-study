

normalizar <- function(v){
  
  n     <- c()
  maxv  <- max(v)
  minv  <- min(v)
  
  for(i in 1:length(v)){
    
    n <- c(n, (v[i] - minv) / (maxv - minv))
    
  }
  
  n
  
}

meuVetor             <- c(1:100)
meuVetorNormalizado1 <- normalizar(meuVetor)
