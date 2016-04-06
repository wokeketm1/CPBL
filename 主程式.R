library(tm)
library(rJava)
library(wordcloud)
library(dplyr)
library(plyr)
library(taRifx)

output <- NULL

for (i in 1:100){
numforgame <- paste0(i)
x <- readLines(paste0("C:/Users/Student/Desktop/input/例行賽",numforgame,"(2014org).txt"),encoding="UTF-8")
##統一格式
x <- gsub("\\）",replacement="\\)",x)
x <- gsub("：",replacement=":",x)
x <- gsub("\\（",replacement="\\(",x)
x <- gsub(" ",replacement="",x)
x <- gsub("Lamigo桃猿隊",replacement="桃猿",x)
x <- gsub("Lamigo猿",replacement="桃猿",x)
x <- gsub("Lamigoo",replacement="桃猿",x)
x <- gsub("Lamigo",replacement="桃猿",x)
x <- gsub("LAMIGO",replacement="桃猿",x)
x <- gsub("統一7-ELEVEn獅隊",replacement="統一",x)
x <- gsub("統一7-ELEVEn獅",replacement="統一",x)
x <- gsub("統一7ELEVEn獅",replacement="統一",x)
x <- gsub("統一獅",replacement="統一",x)
x <- gsub("中信兄弟",replacement="兄弟",x)
x <- gsub("義大犀牛",replacement="義大",x)
x <- gsub("EDA",replacement="義大",x)
x <- gsub("一壘手",replacement="1B",x)
x <- gsub("二壘手",replacement="2B",x)
x <- gsub("三壘手",replacement="3B",x)
x <- gsub("游擊手",replacement="SS",x)
x <- gsub("捕手",replacement="C",x)
x <- gsub("左外野手",replacement="LF",x)
x <- gsub("中外野手",replacement="CF",x)
x <- gsub("右外野手",replacement="RF",x)
x <- gsub("指定打擊",replacement="DH",x)
x <- gsub("棒，",replacement="棒",x)
x <- gsub("1棒",replacement="一棒",x)
x <- gsub("2棒",replacement="二棒",x)
x <- gsub("3棒",replacement="三棒",x)
x <- gsub("4棒",replacement="四棒",x)
x <- gsub("5棒",replacement="五棒",x)
x <- gsub("6棒",replacement="六棒",x)
x <- gsub("7棒",replacement="七棒",x)
x <- gsub("8棒",replacement="八棒",x)
x <- gsub("9棒",replacement="九棒",x)

rowforgame <- c(1:length(x))
inning     <- inningfunction()
id         <- idfunction()
Base1      <- cbind(c(1:length(x)),c("NA"))[,2]             
Base2      <- cbind(c(1:length(x)),c("NA"))[,2]              
Base3      <- cbind(c(1:length(x)),c("NA"))[,2]              
out        <- outfunction()
away      <- pointfunction()
home     <- point3function()
Player     <- Playerfunction()
direction  <- directionfunction()	    
result     <- cbind(c(1:length(x)),c("NA"))[,2]          
follow.up  <- follow.upfunction()
       
outputmatrix <- cbind(numforgame,rowforgame,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up)
output <- rbind(output,outputmatrix)
}

print(output)

#輸出
#write.csv(output,paste0("C:/Users/Student/Desktop/output/output.csv"),row.names=FALSE)

