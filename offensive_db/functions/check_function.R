# 需要人工校閱的條件, to_check <- 1
check_function = function(dummy_list, log_row) {
  
  # length greater than 30 (經過normalize_log_function的log_row字數較少)
  if (nchar(log_row) > 30) { dummy_list$to_check <- 1 }
  
  # 暴投
  if (grepl("暴投", log_row)) { dummy_list$to_check <- 1 }
  
  # 出現失誤或失敗
  if (grepl("失誤", log_row) || grepl("失敗", log_row)) {
    dummy_list$to_check <- 1
  }
  
  # 野手選擇
  if (grepl("野選", log_row) || grepl("選擇", log_row)) {
    dummy_list$to_check <- 1
  }
  
  # 盜壘複合情況
  if (grepl("安打",log_row)&&grepl("盜",log_row) || grepl("保送",log_row)&&grepl("盜",log_row)) {
    dummy_list$to_check <- 1
  }
  if (grepl("盜", log_row)) { dummy_list$to_check <- 1 }
  

  
  return(dummy_list)
}
