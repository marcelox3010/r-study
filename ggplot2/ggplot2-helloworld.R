library("ggplot2")

ggplot(mtcars, aes(wt, mpg, size = disp)) +
  geom_point()


ggplot(mtcars, aes(wt, mpg, color = disp)) +
  geom_point()


