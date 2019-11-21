
# example quartis
dados <- trunc(runif(100, min=0, max=100))

summary(dados)

quantile(dados, probs = 0)
quantile(dados, probs = 0.25)
quantile(dados, probs = 0.50)
quantile(dados, probs = 0.75)
quantile(dados, probs = 1)

boxplot(dados)

