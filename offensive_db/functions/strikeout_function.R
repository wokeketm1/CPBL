strikeout_function = function(dummy_list, log_row) {
  #三振出局
  # 展開 dummy_list 的值
  rem_type <- dummy_list$rem_type
  base1 <- dummy_list$base1
  base2 <- dummy_list$base2
  base3 <- dummy_list$base3
  player <- dummy_list$player
  
  if (grepl("三振", log_row)) {
    # hit_function start work
    # catch player name
    player <- substr (log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 )
    
    
    
    
    
    # 依情境辦事
    # 三振
    if (rem_type %in% c(1,2)) {
      # empty to empty
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(4,5)) {
      # 1B to 1B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(7,8)) {
      # 2B to 2B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(10,11)) {
      # 3B to 3B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(13,14)) {
      # 1B_2B to 1B_2B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(16,17)) {
      # 1B_3B to 1B_3B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(19,20)) {
      # 2B_3B to 2B_3B
      rem_type <- rem_type + 1
      
    } else if (rem_type %in% c(22,23)) {
      # 1B_2B_3B to 1B_2B_3B
      rem_type <- rem_type + 1
    }
    
    
    
    
  } else {
    # dummy_list 不變
  }
  
  # 將區域變數復原為 dummy_list 傳出
  dummy_list$rem_type <- rem_type
  dummy_list$base1 <- base1
  dummy_list$base2 <- base2
  dummy_list$base3 <- base3 
  dummy_list$player <- player
  return(dummy_list)
}