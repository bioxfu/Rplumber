library(dplyr)

db_name <- '/app/test'
my_db <- src_sqlite(db_name, create = FALSE)
iris <- tbl(my_db, "iris")

#' search data from the iris dataset
#' @param spec If provided, filter the data to only this species (e.g. 'setosa')
#' @get /search
function(spec){
  # Filter if the species was specified
  if (!missing(spec)){
    dfm <- as.data.frame(filter(iris, Species == spec))
    if(nrow(dfm) > 0) {
      dfm
    }
    else {
      list(msg = paste0(spec, " is not found"))
    }
  }
  else {
    list(msg = "param is not given")
  }
}
