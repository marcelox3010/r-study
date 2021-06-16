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

fi
