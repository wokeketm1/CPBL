library(tm)
library(dplyr)
library(plyr)
library(taRifx)
#例行賽215 局數有問題
#例行賽120 局數有問題 
#例行賽94 局數有問題
#例行賽64 九上誤植成九下
#例行賽114 69列分數登記有誤
inningnoproblem<-c(1:63,65:93,95:119,121:214,216:240)
output <- NULL

for (i in inningnoproblem){

#讀取資料
numforgame <- paste0(i)
x <- readLines(paste0("C:/Users/Student/Desktop/input/例行賽",numforgame,"(2014org).txt"),encoding="UTF-8")

#統一格式
x          <- dictionaryfunction()

#各col
rowforgame <- c(1:length(x))
extrathing <- cbind(c(1:length(x)),c("NA"))[,2]
inning     <- inningfunction()
id         <- idfunction()
Base1      <- cbind(c(1:length(x)),c("NA"))[,2]             
Base2      <- cbind(c(1:length(x)),c("NA"))[,2]              
Base3      <- cbind(c(1:length(x)),c("NA"))[,2]              
out        <- outfunction()
away       <- pointfunction()
home       <- point3function()
Player     <- Playerfunction()
direction  <- directionfunction()	    
result     <- resultfunction()          
follow.up  <- follow.upfunction()
log        <- x
   
outputmatrix <- cbind(numforgame,rowforgame,extrathing,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up,log)
output <- rbind(output,outputmatrix)
}

#print(output)

#輸出
write.csv(output,paste0("C:/Users/Student/Desktop/output/output04106.csv"),row.names=FALSE)

