library(tm)
library(rJava)
library(wordcloud)
library(dplyr)
library(plyr)
library(taRifx)

output <- NULL

for (i in 1:200){

#讀取資料
numforgame <- paste0(i)
x <- readLines(paste0("C:/Users/Student/Desktop/input/例行賽",numforgame,"(2014org).txt"),encoding="UTF-8")

#統一格式
x          <- dictionaryfunction()

#各個col
rowforgame <- c(1:length(x))
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
result     <- cbind(c(1:length(x)),c("NA"))[,2]          
follow.up  <- follow.upfunction()
       
outputmatrix <- cbind(numforgame,rowforgame,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up)
output <- rbind(output,outputmatrix)
}

#print(output)

#輸出
write.csv(output,paste0("C:/Users/Student/Desktop/output/output04085.csv"),row.names=FALSE)

