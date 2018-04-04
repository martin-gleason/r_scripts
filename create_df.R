#Goal: create a data frame based on the count of answers. answers = a vector of some survey answers,  unique.answers is should be created from create_answers


require(tidyverse)
require(plyr)

create_df <- function(answers, unique.answers, ...){
    #takes t and a vector of values. 
    df <- answers %>%  map(str_count, unique.answers) %>% ldply()
    colnames(df) <- unique.answers

    
  
  return(df)
  }

