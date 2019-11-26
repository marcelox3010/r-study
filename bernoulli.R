# BERNOULLI DISTRIBUTION

# p(X = x) = (p)^x * (1-p)^1-x
# MEAN => μ = (1-p)*0 + p*1 => μ = p
# VAR => σ² = [(1-p)*(0-μ)²] + p*[(1-μ)²] => σ² = [(1-p)*(0-p)²] + p*[(1-p)²] => σ² = p(1-p)
# SD => σ = √ p(1-p)

install.packages("Rlab")                         # Install Rlab package
library("Rlab")                                  # Load Rlab package

dbern(1, 0.7)