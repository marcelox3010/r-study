library("echarts4r")
data <- data.frame(
  categoria = c("A", "B", "C", "D"),
  valor = c(10000.10, 232323.23, 15155.15, 88888.88)
)

# Criando o gráfico de barras e rotacionando
data %>%
  e_charts(categoria) %>%
  e_bar(valor) %>%
  e_tooltip(
    
    trigger = "axis",
    axisPointer = list(type = 'shadow'),
    formatter = e_tooltip_pointer_formatter("decimal", digits = 2, locale = "PT"),
    backgroundColor = "rgba(255, 255, 255, 0.8)"
    
  ) %>% e_flip_coords()



data %>%
  e_charts(categoria) %>%
  e_bar(valor) %>%
  e_tooltip(
    
    trigger = "item",
    axisPointer = list(type = 'shadow'),
    #formatter = e_tooltip_pointer_formatter("decimal", digits = 2, locale = "PT"),
    backgroundColor = "rgba(255, 255, 255, 0.8)"
    
  ) %>% e_flip_coords()
