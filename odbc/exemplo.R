#install.packages(RODBC)
library(RODBC)

con <- odbcConnect("conexao-montada-odbc", pwd= "***")
query <- "select * from meu_schema.minha_tabela"

dados <- sqlQuery(con, query)
dados
