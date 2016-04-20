# source all functions, remember add encoding = "UTF-8"
source_all = function() {
  c_function_name <- c("check", "hit1", "hit2", "hit3", "inning", "outs", "strikeout", "walk", "homerun")
  for (i in 1:length(c_function_name)) {
    # function_path <- paste0("/Users/shipo/Documents/cpbl_project/offensive_db/functions/", c_function_name[i], "_function.R")
    function_path <- paste0("D:/cpbl_project/offensive_db/functions/", c_function_name[i], "_function.R")
    source(function_path, encoding = "UTF-8")
  }
}
source_all()

# load log_file
num_logfile <- 1
# log_path <- paste0("/Users/shipo/Documents/cpbl_project/logs/2014/例行賽", as.character(num_logfile), "(2014org).txt")
log_path <- paste0("D:/cpbl_project/logs/2014/例行賽", as.character(num_logfile), "(2014org).txt")
log_file <- readLines( log_path, encoding = "UTF-8")


# 紀錄得分矩陣共24種情境、行動球員名、壘包上球員名, check with this link
# https://docs.google.com/spreadsheets/d/1fTBCX7Cgo3JINW0_SKA1qA-GD1GrAtZ1XqllJl6fqDw/edit#gid=1827881277
dummy_list <- list(
  num_logfile = num_logfile, num_logrow = 1, inning = "NA",
  rem_type = "NA", base1 = "NA", base2 = "NA", base3 = "NA", 
  player = "NA", 
  to_check = 0
)

# initialize the column waiting for vector
c_numlogfile <- c_numlogrow <- c_numlogrow <- 
  c_inning <- c_remtype <- 
  c_base1 <- c_base2 <- c_base3 <- c_player <- 
  c_tocheck <- "NA"

# load by log_row
# log_row <- log_file[3]
for ( i in 1:length(log_file))  {
  log_row <- log_file[i]
  c_numlogfile[i] <- num_logfile
  c_numlogrow[i] <- i
  c_remtype[i] <- dummy_list$rem_type
  c_base1[i] <- dummy_list$base1
  c_base2[i] <- dummy_list$base2
  c_base3[i] <- dummy_list$base3
  
  # renew the current player, to_check
  dummy_list$player <- "NA"
  dummy_list$to_check <- 0
  
  # call the functions （推進、出局、例外）
  dummy_list <- inning_function(dummy_list, log_row)
  
  # 推進
  dummy_list <- hit1_function(dummy_list, log_row)
  dummy_list <- hit2_function(dummy_list, log_row)
  dummy_list <- hit3_function(dummy_list, log_row)
  dummy_list <- walk_function(dummy_list, log_row)
  
  # 出局
  dummy_list <- outs_function(dummy_list, log_row)
  
  # 例外
  dummy_list <- check_function(dummy_list, log_row)
  
  
  c_player[i] <- dummy_list$player
  c_tocheck[i] <- dummy_list$to_check
  c_inning[i] <- dummy_list$inning
}

# output
off_table <- data.frame(
  num_logfile = c_numlogfile, num_logrow = c_numlogrow, inning = c_inning,
  rem_type = c_remtype, 
  base1 = c_base1, base2 = c_base2, base3 = c_base3, 
  player = c_player,
  to_check = c_tocheck
)
