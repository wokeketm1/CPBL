# 抓出局
outs_function = function(dummy_list, log_row) {
  
  rem_type <- dummy_list$rem_type
  base1 <- dummy_list$base1
  base2 <- dummy_list$base2
  base3 <- dummy_list$base3
  player <- dummy_list$player
  
  if (grepl("出局", log_row)) {
    
    player <- substr (log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 )
    
    # 0 outs
    if(rem_type %in% c(1,4,7,10,13,16,19,22)){
      rem_type <- rem_type + 1 
      
      if (grepl("雙殺", log_row)) {
        rem_type <- rem_type + 1
        base1 <- "NA"
        base2 <- "NA"
        base3 <- "NA"
      }

    # 1 outs      
    } else if(rem_type %in% c(2,5,8,11,14,17,20,23)){
      rem_type <- rem_type + 1
      
      if (grepl("雙殺", log_row)) {
        rem_type <- "NA"
        base1 <- "NA"
        base2 <- "NA"
        base3 <- "NA"
        
      }

    # 2 outs            
    } else if(rem_type %in% c(3,6,9,12,15,18,21,24)){
      rem_type <- "NA"
      base1 <- "NA"
      base2 <- "NA"
      base3 <- "NA"
      
    }
  } else {
    # do nothing
  }
  
  dummy_list$rem_type <- rem_type
  dummy_list$base1 <- base1
  dummy_list$base2 <- base2
  dummy_list$base3 <- base3 
  dummy_list$player <- player
  
  # output dummy_list
  return(dummy_list)
}
