#Takes a vector or single column DF, turn into tibble of names
require(tidyverse)


answers_from_column <- function(x, pattern = ",", ...){
  if(!is.data.frame(x)){
    answers <- x %>% 
      str_split(pattern) %>% 
      unlist %>% 
      str_trim() %>% 
      unique()
    
  }
  else {
    answers <- x %>% 
      pull() %>% 
      str_split(pattern) %>% 
      unlist %>% 
      str_trim() %>% 
      unique()
  }
 
  #df <- tibble(answers)

  #return(df)
  return(answers)
}
