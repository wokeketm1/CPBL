#程式碼從這邊開始--------------------------------------------------------------------------------------------
#例行賽94,120,215 局數有問題 #例行賽64 九上誤植成九下#列行賽43沒有三出局#例行賽114 69列分數登記有誤 
inningnoproblem<-c(1:42,44:63,65:93,95:119,121:214,216:240)
output1 <- NULL

#迴圈開始-----
for (i in inningnoproblem){

#讀取資料
numforgame <- paste0(i)
x <- readLines(paste0("C:/Users/Student/Desktop/input/例行賽",numforgame,"(2014org).txt"),encoding="UTF-8")

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
direction  <- directionfunction()	    
result     <- resultfunction()          
follow.up  <- follow.upfunction()
log        <- x
   
outputmatrix <- cbind(numforgame,rowforgame,specialcircumstances,inning,id,Base1,Base2,Base3,out,away,home,Player,direction,result,follow.up,log)
output1 <- rbind(output1,outputmatrix)
}
#迴圈結束------

#extragame
output2<-extragamefunction(c(43,64,215,120,94))

#bind
outputextra<-rbind(output1,output2)





#輸出
#write.csv(outputextra,paste0("C:/Users/Student/Desktop/output/output04199.csv"),row.names=FALSE)

