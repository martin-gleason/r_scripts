
##https://richardlent.github.io/post/an-r-script-for-calculating-reading-time-of-an-article/
##Used without permission, but he put it up on the website as a chunk, so....

avg_time <- function(x, ...){
require("tools")
  if (file_ext(x) != "rmd")
    print("Please load Rmarkdown File")
  else
    bytes <- file.size(x)
    words <- bytes/10
    minutes <- words/200
    
return (minutes)
}

