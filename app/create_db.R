library(dplyr)
library(data.table)

db_name <- 'test'

## Create a database
my_database <- src_sqlite(db_name, create = TRUE) 

## Put data in the database
copy_to(my_database, iris, temporary = FALSE)

## Connect to database
# my_db <- src_sqlite(db_name, create = FALSE)

## List the tables in the database
# src_tbls(my_db)

## Querying the database
# iris <- tbl(my_db, "iris")
# class(iris)
# head(iris, 3)
