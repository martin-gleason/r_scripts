#locate the comma for number of columns   into

##length(colnames(survey_anon)) <-works
require(stringr)
require(dplyr)

count_comma <- function(x, ...){
max(str_count(unlist(x), pattern = ","))  
}
