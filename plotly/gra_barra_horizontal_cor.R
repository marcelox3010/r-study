#gráfico 1
library(plotly)

legendas <-  c('05/2021', 'Meta 2021')
valores <- c(104, 100)
titulo <- "Taxa de Cobertura das Famílias Beneficiarias do PBF\n a partir de estimativas de famílias pobres com o Censo 2010"
cores <- c("rgb(247,199,48)", "rgb(68,114,196)")

fig <- plot_ly(
        x = valores, 
        y = legendas, 
        type = 'bar', 
        orientation = 'h',
        marker = list(color = c(cores[1], cores[2])))

fig <- fig %>% layout(title = titulo,
                      xaxis = list(title = "%"),
                      yaxis = list(title = ""))

fig

#gráfico 2

titulo <- 'Famílias habilitadas ao PBF por situação (09/2020)'
cores <- c("rgb(247,199,48)", "rgb(68,114,196)")

saldo_famias_habilitadas <- c(95)
novas_concessoes <- c(5)
y <- c(as.character(saldo_famias_habilitadas+novas_concessoes))

data <- data.frame(y, saldo_famias_habilitadas, novas_concessoes)

fig <- plot_ly(data, x = ~saldo_famias_habilitadas, y = ~y, type = 'bar', orientation = 'h', name = 'Saldo Famílias Habilitadas',
               marker = list(color = cores[1]))

fig <- fig %>% add_trace(x = ~novas_concessoes, name = 'Novas Concessões',
                         marker = list(color = cores[2]))
fig <- fig %>% layout(barmode = 'stack',
                      xaxis = list(title = ""),
                      yaxis = list(title =""))

fig <- fig %>% layout(title = titulo)
fig <- fig %>% layout(legend = list(orientation = 'h'))

fig

