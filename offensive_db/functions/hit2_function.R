hit2_function = function(dummy_list, log_row) {
  #二壘安打
  # 展開 dummy_list 的值
  rem_type <- dummy_list$rem_type
  base1 <- dummy_list$base1
  base2 <- dummy_list$base2
  base3 <- dummy_list$base3
  player <- dummy_list$player
  
  hit2_type <- (c("二壘安打","深遠安打","上方安打"))
  
    for (i in 1:length(hit2_type)){
      
        if (grepl(hit2_type[i], log_row)) {
        # hit_function start work
        # catch player name
        player <- substr (log_row, regexpr("：",log_row)-3, regexpr("：",log_row)-1 )
        
        #grepl("[二][壘].*[安][打]", log_row)
        
        # 依情境辦事
        # 二壘安打
            if (rem_type %in% c(1,2,3)) {
              # empty to 2B
              base2 <- player
              rem_type <- rem_type + 6 
              
            } else if (rem_type %in% c(4,5,6)) {
              # 1B to 2B_3B
              base3 <- base1
              base2 <- player
              base1 <- "NA"
              
              rem_type <- rem_type + 15 
              
              #extrabase_function
              if (grepl("一分",log_row)){
                  if (base3 != "NA"){
                    base3 = "NA"
                    
                  }else if(base3 == "NA"){
                    
                    if (base2 != "NA"){
                      base2 = "NA"
                    }
                    
                  }else if(base2 == "NA"){
                    
                    if (base1 != "NA"){
                      base1 = "NA"
                    }
                  }
                #2B_3B to 2B
                rem_type <- rem_type - 12
              }
              
            } else if (rem_type %in% c(7,8,9)) {
              # 2B to 2B
              #得一分
              base2 <- player
              rem_type <- rem_type 
              
            } else if (rem_type %in% c(10,11,12)) {
              # 3B to 2B
              # 得一分
              base3 <- "NA"
              base2 <- player
              rem_type <- rem_type - 3 
              
            } else if (rem_type %in% c(13,14,15)) {
              # 1B_2B to 2B_3B
              #得一分
              base3 <- base1
              base2 <- player
              base1 <- "NA"
              rem_type <- rem_type + 6
              
              #extrabase_function
              if (grepl("二分",log_row) || grepl("兩分",log_row)){
                  if (base3 != "NA"){
                    base3 = "NA"
                    
                  } else if(base3 == "NA"){
                    
                    if (base2 != "NA") {
                      base2 = "NA"
                      
                    }
                  } else if(base2 == "NA"){
                    
                    if (base1 != "NA") {
                      base1 = "NA"
                    }
                  }
                  rem_type <- rem_type - 12
                  #2B_3B to 2B
              }
              
            } else if (rem_type %in% c(16,17,18)) {
              # 1B_3B to 2B_3B
              # 得一分
              base3 <- base1
              base2 <- player
              rem_type <- rem_type + 3
              
              #extrabase_function
              if (grepl("二分",log_row) || grepl("兩分",log_row)){
                if (base3 != "NA"){
                  base3 = "NA"
                  
                } else if(base3 == "NA"){
                  
                  if (base2 != "NA") {
                    base2 = "NA"
                    
                  }
                } else if(base2 == "NA"){
                  
                  if (base1 != "NA") {
                    base1 = "NA"
                  }
                }
                rem_type <- rem_type - 12
                #2B_3B to 2B
              }
              
            } else if (rem_type %in% c(19,20,21)) {
              # 2B_3B to 2B
              #得兩分
              base3 <- "NA"
              base2 <- player
              rem_type <- rem_type - 12
              
            } else if (rem_type %in% c(22,23,24)) {
              # 1B_2B_3B to 2B_3B
              #得兩分
              base3 <- base1
              base2 <- player
              base1 <- "NA"
              rem_type <- rem_type - 3
              
              #extrabase_function
              if (grepl("三分",log_row)){
                if (base3 != "NA"){
                  base3 = "NA"
                  
                } else if(base3 == "NA"){
                  
                  if (base2 != "NA") {
                    base2 = "NA"
                    
                  }
                } else if(base2 == "NA"){
                  
                  if (base1 != "NA") {
                    base1 = "NA"
                  }
                }
                rem_type <- rem_type - 12
                #2B_3B to 2B
              }
            }  
    
       }else {
          # dummy_list 不變
       }
  } 
  
  # 將區域變數復原為 dummy_list 傳出
  dummy_list$rem_type <- rem_type
  dummy_list$base1 <- base1
  dummy_list$base2 <- base2
  dummy_list$base3 <- base3 
  dummy_list$player <- player
  return(dummy_list)
}