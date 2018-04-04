#seperate vector with commas into new table
#remember to look up default args with function creation
# from https://stackoverflow.com/questions/4350440/split-a-column-of-a-data-frame-to-multiple-columns# Yannis P's elegant solution
# I figured I could use str_split, but this solution uses a matrix over a list

require(tidyverse)

separate_columns <-function(x, new.column.name = "Choice", ...){
  col.names <- x %>% str_split_fixed(pattern = ",", n = Inf)
  col.names[which(col.names == "")] <- NA
  col.names <- as.tibble(col.names)
 
  print(col.names)
  #m <- dim(col.names)[2]
  
  #print(names(col.names))
  
  #names(col.names) <- paste(new.column.name, 1:m, sep = ".")
  #return(col.names)
}
