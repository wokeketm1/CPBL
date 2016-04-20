# 保送
walk_function = function(dummy_list, log_row) {
  
  # 展開 dummy_list 的值
  rem_type <- dummy_list$rem_type
  base1 <- dummy_list$base1
  base2 <- dummy_list$base2
  base3 <- dummy_list$base3
  player <- dummy_list$player

  # log_row <- log_file[10]  
  # player <- "NA"
  if (grepl("保送", log_row)) {
      # walk start work
      # catch player name
      player <- substr(log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 ) 
      #substr(log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 )
  
      
      if (rem_type %in% c(1,2,3)) {
        base1 <- player
        # empty to 1B
        rem_type <- rem_type + 3 
        
      } else if (rem_type %in% c(4,5,6)) {
        base2 <- base1
        base1 <- player
        # 1B to 1B_2B
        rem_type <- rem_type + 9 
        
      } else if (rem_type %in% c(7,8,9)) {
        base2
        base1 <- player
        # 2B to 1B_2B
        rem_type <- rem_type + 6
        
      } else if (rem_type %in% c(10,11,12)) {
        base3 
        base1 <- player
        # 3B to 1B_3B
        rem_type <- rem_type + 6 
        
      } else if (rem_type %in% c(13,14,15)) {
        base3 <- base2
        base2 <- base1
        base1 <- player
        # 1B_2B to 1B_2B_3B
        rem_type <- rem_type + 9 
        
      } else if (rem_type %in% c(16,17,18)) {
        base3
        base2 <- base1
        base1 <- player
        # 1B_3B to 1B_2B_3B
        rem_type <- rem_type + 6 
        
      } else if (rem_type %in% c(19,20,21)) {
        base3
        base2
        base1 <- player
        # 2B_3B to 1B_2B_3B
        rem_type <- rem_type + 3
        
      } else if (rem_type %in% c(22,23,24)) {
        base3 <- base2
        base2 <- base1
        base1 <- player
        # 1B_2B_3B to 1B_2B_3B, rem_type no change
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
