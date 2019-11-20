
# EXEMPLO DE MEDIANA
# EXAMPLE OF MEDIAN

a <- c(0, 6, 7, 7, 7, 7, 5, 7, 5)
b <- c(5, 3, 2, 8, 4)
c <- c(3, 5, 6, 7, 10, 11)

#function

median(a)
median(b)
median(c)

# ---------------------------------------------------------

vetores <- list(a, b, c)

for(i in vetores){

  if((length(i) %% 2) == 0){
    
    element <- (length(i) + 1) / 2
    tmp <- sort(i)
    print(paste("median: ", (tmp[element] + tmp[element+1]) / 2))
    
  }else{
    
    element <- (length(i) + 1) / 2
    tmp <- sort(i)
    print(paste("median: ", tmp[element]))
    
  }
  
}
