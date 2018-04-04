#Count the comma, make a new table
require(tidyverse)

source("/Users/marty/Dropbox (Personal)/Coding Projects/R/scripts/count_comma.r")
if(!is.data.frame(x)){
  warning("Arguement must be a Data.Frame")
  return(NA_real_)
}
create_table <- function(x, ...){
 
  col_names <- names(x)

    for(i in seq_along(col_names)){
      n <- count_comma(x[ ,i])
      
      if(n > 0){
        x[ ,i] %>% separate(i, into = c())
        
      }
  }
}