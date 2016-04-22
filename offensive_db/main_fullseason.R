library(dplyr)
library(tm)
library(plyr)
library(taRifx)
# 1. source all functions
# remember add encoding = "UTF-8"
source_all = function() {
  c_function_name<-list.files("D:/CPBL/offensive_db/functions", pattern="*.R")
  for (i in 1:length(c_function_name)) {
    function_path <- paste0("D:/CPBL/offensive_db/functions/", c_function_name[i])
    source(function_path, encoding = "UTF-8")
  }
}
source_all()
# 2. run the single_game function
main_single_game = function(num_logfile) {
  # 2-1.load log_file
  log_path <- paste0("D:/CPBL/logs/2014/例行賽", as.character(num_logfile), "(2014org).txt")
  log_file <- readLines(log_path, encoding = "UTF-8")
  log_file <- normalize_log_function(log_file)
  # 2-2. dummy list
  dummy_list <- list(
    num_logrow = num_logfile, inning = "NA",
    rem_type = "NA", base1 = "NA", base2 = "NA", base3 = "NA", 
    player = "NA", 
    to_check = 0
  )
  # 2-3. initialize the column waiting for vector
  c_numlogfile <- c_numlogrow <- c_numlogrow <- 
    c_inning <- c_remtype <- 
    c_base1 <- c_base2 <- c_base3 <- c_player <- 
    c_tocheck <- "NA"
  # 2-4. load funtions row by row
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
  
  # 3-4. set the  off_table (single_game)
  off_table <- data.frame(
    num_logfile = c_numlogfile, num_logrow = c_numlogrow, inning = c_inning,
    rem_type = c_remtype, 
    base1 = c_base1, base2 = c_base2, base3 = c_base3, 
    player = c_player,
    to_check = c_tocheck
  )
  # output
  return(off_table)
}

# 3. merge all off_table into offensive
offensive_db <- lapply(1:240, function(num_logfile) {
  main_single_game(num_logfile)
}) %>% Reduce(f = rbind)
  


# 4.merge offensive_db & anothercol

#程式碼從這邊開始--------------------------------------------------------------------------------------------
inningnoproblem<-c(1:42,44:63,65:93,95:119,121:214,216:240)
output1 <- NULL
#迴圈開始-----
for (i in inningnoproblem){
  
  #讀取資料
  numforgame <- paste0(i)
  x <- readLines(paste0("D:/CPBL/logs/2014/例行賽",numforgame,"(2014org).txt"),encoding="UTF-8")
  
  #統一格式
  x          <- dictionaryfunction()
  
  #各欄位
  rowforgame <- c(1:length(x))
  specialcircumstances <- specialcircumstancesfunction()
  inning     <- inningfunction()
  id         <- idfunction()
  Base1      <- cbind(c(1:length(x)),c("NA"))[,2]             
  Base2      <- cbind(c(1:length(x)),c("NA"))[,2]              
  Base3      <- cbind(c(1:length(x)),c("NA"))[,2]              
  out        <- outfunction()
  away       <- pointfunction()
  home       <- point3function()
  Player     <- Playerfunction()
 # game.player<- game.playerfunction(x,numforgame)
  direction  <- directionfunction()	    
  result     <- resultfunction()          
  follow.up  <- follow.upfunction(x)
  log        <- x
  
  outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up,log)
  # outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,game.player,direction,result,follow.up,log)
  output1 <- rbind(output1,outputmatrix)
}
#迴圈結束------


#例外加入
#例行賽94,120,215 局數有問題 #例行賽64 九上誤植成九下#列行賽43沒有三出局#例行賽114 69列分數登記有誤
#迴圈開始------
output2<-NULL
extragame<-c(43,64,215,120,94)
for (i in 1:length(extragame)){
x <- readLines(paste0("D:/CPBL/logs/2014/例行賽",extragame[i],"(2014org).txt"),encoding="UTF-8")
#統一格式
x          <- dictionaryfunction()
#各欄位
numforgame <- extragame[i]
rowforgame <- c(1:length(x))
specialcircumstances <- specialcircumstancesfunction()
inning     <- inningfunction()
id         <- idfunction()
Base1      <- cbind(c(1:length(x)),c("NA"))[,2]
Base2      <- cbind(c(1:length(x)),c("NA"))[,2]
Base3      <- cbind(c(1:length(x)),c("NA"))[,2]
out        <- cbind(c(1:length(x)),c("NA"))[,2]
away       <- pointfunction()
home       <- point3function()
Player     <- Playerfunction()
# game.player<- game.playerfunction(x,numforgame)
direction  <- directionfunction()
result     <- resultfunction()
follow.up  <- follow.upfunction(x)
log        <- x

outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up,log)
# outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,game.player,direction,result,follow.up,log)

output2<-rbind(output2,outputmatrix)
}
#迴圈結束------

#merge output1 output2
anothercol<-rbind(output1,output2)
#sort row
anothercol<-anothercol[order(as.numeric(anothercol[,1])) , ]
#merge anothercol offensive_db
merge2table=cbind(anothercol,offensive_db)


ouputmatrix<-merge2table[,c(1:2,19,5,9:15,20:24,25,3,16)]



# 5.找出例外狀況
special<-character(length(ouputmatrix[,1]))
special[union(which(ouputmatrix[,17]==1),which(ouputmatrix[,18]==TRUE))]="warning"
writeuse<-cbind(ouputmatrix,special)

#排列資料的col
writeuse<-writeuse[,c(1:3,6,7,12:15,4,8:10,5,11,20,19)]
#新增rowforextra
rowforextra<-matrix(1,length(writeuse[,1]))
outputuse<-cbind(writeuse,rowforextra)
outputuse<-outputuse[,c(1:2,18,3:17)]

#View(head(outputuse))
# 6.Output
write.csv(outputuse,paste0("C:/Users/Student/Desktop/output/output042205.csv"),row.names=FALSE)
 
