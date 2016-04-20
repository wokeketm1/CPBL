# 全壘打
homerun_function = function(dummy_list, log_row) {
  
  # 展開 dummy_list 的值
  rem_type <- dummy_list$rem_type
  base1 <- dummy_list$base1
  base2 <- dummy_list$base2
  base3 <- dummy_list$base3
  player <- dummy_list$player
  

  if (grepl("全壘打", log_row) || grepl("砲", log_row)) {
    # home_run start work
    # catch player name
    player <- substr(log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 ) 
    
    
      if (rem_type %in% c(1,2,3)) {
        # 得一分
        # 1B,2B,3B,rem_type no change
        player
      } else if (rem_type %in% c(4,5,6)) {
        # 得兩分
        # 1B to empty
        player
        rem_type <- rem_type - 3 
      } else if (rem_type %in% c(7,8,9)) {
        # 得兩分
        # 2B to empty
        player
        rem_type <- rem_type - 6
      } else if (rem_type %in% c(10,11,12)) {
        # 得兩分
        # 3B to empty
        player
        rem_type <- rem_type - 9
      } else if (rem_type %in% c(13,14,15)) {
        # 得三分
        # 1B_2B to empty
        player
        rem_type <- rem_type - 12
      } else if (rem_type %in% c(16,17,18)) {
        # 得三分
        # 1B_3B to empty
        player
        rem_type <- rem_type - 15
      } else if (rem_type %in% c(19,20,21)) {
        # 得三分
        # 2B_3B to empty
        player
        rem_type <- rem_type - 18
      } else if (rem_type %in% c(22,23,24)) {
        # 得四分
        # 1B_2B_3B to empty
        player
        rem_type <- rem_type - 21
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