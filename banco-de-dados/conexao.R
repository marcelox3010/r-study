#install.packages('RPostgreSQL')
#install.packages('DBI')
#install.packages("RPostgres")

library(RPostgreSQL)
library(RPostgres)
library(DBI)

db          <- "***"
db_port     <- "***"
db_user     <- "***"
db_password <- "***"
host_db     <- "***"

con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, user=db_user, password=db_password)
dbListTables(con)
dbListObjects(con)
dbDisconnect(con)
