# 在一局開始時初始化 rem_type, base1,2,3 and player 
inning_function = function(dummy_list, log_row) {
  
  # include all the char of innings
  inn_index <- c("1上", "1下", "2上", "2下", "3上", "3下", "4上", "4下",
                 "5上", "5下", "6上", "6下", "7上", "7下", "8上", "8下", 
                 "9上", "9下", "10上", "10下", "11上", "11下", "12上", "12下"
                 )
  
  for (i in 1:length(inn_index)) {

    if (grepl(inn_index[i], log_row)) {
      dummy_list$inning <- inn_index[i]
      dummy_list$rem_type <- 1
      dummy_list$base1 <- "NA"
      dummy_list$base2 <- "NA"
      dummy_list$base3 <- "NA"
      dummy_list$player <- "NA"  
    } else {
      # do not thing
    }
    
  }

  
  return(dummy_list)
}