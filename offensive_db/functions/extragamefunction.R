
extragamefunction=function(...){
#把例外加入
  NArow=paste0(...)
  x <- readLines(paste0("D:/cpbl_project/logs/2014/例行賽",NArow,"(2014org).txt"),encoding="UTF-8")
  #統一格式
  x          <- dictionaryfunction()
  #各欄位
  numforgame <- NArow
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
  direction  <- directionfunction()	    
  result     <- resultfunction()          
  follow.up  <- cbind(c(1:length(x)),c("NA"))[,2]
  log        <- x
  
outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up,log)

return(outputmatrix)
}


