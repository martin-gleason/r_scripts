create_hists <- function(x, na.rm = TRUE, ...){
  if(!is.data.frame(x)){
    warning("Arguement must be a Data.Frame")
    return(NA_real_)
  }
  
  col_names <- names(x)
  
  for(i in seq_along(col_names)) {
    plot <- ggplot(x, aes_string(x = col_names[i])) 
    plot <- plot + geom_histogram(stat = "count", fill = "purple")
    plot <- plot + coord_flip()
    plot_title <- col_names[i] %>% str_replace_all("_", " ") %>% str_to_title()
    plot <- plot + labs(title = plot_title, x = plot_title, y = "Count", size = 4)
    plot(plot)
    #theme. Changing font size
    #ggsave(paste(plot_title, sep = ".", "jpg"), plot, device = "jpeg", width = 4, height = 4)
  }

}
