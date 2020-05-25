
library(ggplot2)

ggplot(iris, aes(x=Petal.Width)) + 
  geom_histogram(bins=20) + 
  labs(x="Comprimento da Pétala", y="Frequência", title="Iris") +
  facet_grid(~ Species)
