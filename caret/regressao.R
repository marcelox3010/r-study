library(caret)
df <- cars

my_linear_model <- lm(dist~speed,data=df)

my_linear_model

variable_speed <- data.frame(speed = c(11,11,12,12,12,12,13,13,13,13))

predict(my_linear_model, newdata = variable_speed)

aaa <- function(x){return((x*3.932)-17.579)}

sapply(c(11,11,12,12,12,12,13,13,13,13),aaa)


predict(my_linear_model, newdata = variable_speed, interval = 'confidence')

  
