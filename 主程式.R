library(tm)
library(rJava)
library(wordcloud)
library(dplyr)
library(plyr)
library(taRifx)

output <- NULL

for (i in 1:100){
numforgame <- paste0(i)
x <- readLines(paste0("C:/Users/Student/Desktop/input/ㄒ︽辽",numforgame,"(2014org).txt"),encoding="UTF-8")
##参Α
x <- gsub("\\",replacement="\\)",x)
x <- gsub("",replacement=":",x)
x <- gsub("\\",replacement="\\(",x)
x <- gsub(" ",replacement="",x)
x <- gsub("Lamigo丰钉",replacement="丰",x)
x <- gsub("Lamigo丰",replacement="丰",x)
x <- gsub("Lamigoo",replacement="丰",x)
x <- gsub("Lamigo",replacement="丰",x)
x <- gsub("LAMIGO",replacement="丰",x)
x <- gsub("参7-ELEVEn粪钉",replacement="参",x)
x <- gsub("参7-ELEVEn粪",replacement="参",x)
x <- gsub("参7ELEVEn粪",replacement="参",x)
x <- gsub("参粪",replacement="参",x)
x <- gsub("い獺",replacement="",x)
x <- gsub("竡礡",replacement="竡",x)
x <- gsub("EDA",replacement="竡",x)
x <- gsub("耂も",replacement="1B",x)
x <- gsub("耂も",replacement="2B",x)
x <- gsub("耂も",replacement="3B",x)
x <- gsub("村阑も",replacement="SS",x)
x <- gsub("も",replacement="C",x)
x <- gsub("オ偿も",replacement="LF",x)
x <- gsub("い偿も",replacement="CF",x)
x <- gsub("偿も",replacement="RF",x)
x <- gsub("﹚ゴ阑",replacement="DH",x)
x <- gsub("次",replacement="次",x)
x <- gsub("1次",replacement="次",x)
x <- gsub("2次",replacement="次",x)
x <- gsub("3次",replacement="次",x)
x <- gsub("4次",replacement="次",x)
x <- gsub("5次",replacement="き次",x)
x <- gsub("6次",replacement="せ次",x)
x <- gsub("7次",replacement="次",x)
x <- gsub("8次",replacement="次",x)
x <- gsub("9次",replacement="次",x)

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

#块
#write.csv(output,paste0("C:/Users/Student/Desktop/output/output.csv"),row.names=FALSE)

