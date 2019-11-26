# BERNOULLI DISTRIBUTION

# p(X = x) = (p)^x * (1-p)^1-x
# MEAN => μ = (1-p)*0 + p*1 => μ = p
# VAR => σ² = [(1-p)*(0-μ)²] + p*[(1-μ)²] => σ² = [(1-p)*(0-p)²] + p*[(1-p)²] => σ² = p(1-p)
# SD => σ = √ p(1-p)

install.packages("Rlab")                         # Install Rlab package
library("Rlab")                                  # Load Rlab package


dbern(0, 0.7) # probability of 0 is 0.3
dbern(1, 0.7) # probability of 1 is 0.7
dbern(2, 0.7) # other cases, probability is 0 

pbern(0, 0.7)
pbern(1, 0.7)
pbern(2, 0.7)

qbern(0, 0.7)
qbern(1, 0.7)
qbern(2, 0.7)

rbern(0, 0.7)
rbern(1, 0.7)
rbern(2, 0.7)
rbern(3, 0.7)
rbern(10, 0.7)
