library(dplyr)

# 1. 設定篩選條件
g_type <- "盜"

select_log_function = function(g_type, num_logfile) {
  # 2. 設定檔案路徑
  log_path <- paste0("D:/cpbl_project/logs/2014/例行賽", as.character(num_logfile), "(2014org).txt")
  log_file <- readLines(log_path, encoding = "UTF-8")
  
  grep(g_type, log_file, value=TRUE)
}

# 3. 設定想要查詢的比賽場次
log_game <- 1:240
select_log <- lapply(log_game, function(num_logfile) {
  select_log_function(g_type, num_logfile)
}) %>% Reduce(f = c)

print(select_log)


# 再次篩選
g_type2 <- "分佔" 
grep(g_type2, select_log, value=TRUE)
