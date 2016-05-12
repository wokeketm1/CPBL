#batterfunction<-function(){
##建立球員字庫
##batter<-read.csv("D:/CPBL/logs/2014/batter.csv",encoding = "UTF-8")
#batter<-read.csv("E:/CPBL/logs/2014/batter.csv",encoding = "UTF-8")
#playername<-batter[,3]
#
##對球員作處理只留下名字
#sub.batter<-substr(playername,1,regexpr(",",playername)-1)
#sub.batter[which((sub.batter=="")==TRUE)]<-playername[which((sub.batter=="")==TRUE)]%>%as.character()
#batter<-cbind(batter,sub.batter)
#
##隊伍名稱有誤作處理
#wrong.team<-which(batter[,4]!="LAMIGO" &  batter[,4]!="EDA" & batter[,4]!="ELEPHANT" & batter[,4]!="LION")
#batter[,4][wrong.team]<-batter[,5][wrong.team]
#
##排列batter
#batter<-batter[,c(1,2,4,6)]
#return(batter)
#}

