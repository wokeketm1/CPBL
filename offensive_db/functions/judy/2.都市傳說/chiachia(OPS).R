library(dplyr)
library(tidyr)
library(ggplot2)
#讀取
off_db<-readRDS("D:/CPBL/offensive_db/functions/judy/2.都市傳說/input/off_db.RDS")

#filter"彭政閔"
chiachia<-off_db[grep("彭政閔",off_db$Player),]
chiachia.forgame<-chiachia$result
#gsub
chiachia.forgame<-gsub("二壘安打觸殺",replacement="二壘安打",chiachia.forgame)
chiachia.forgame<-gsub("三振投手暴投",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("三振盜壘失敗",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("三振觸殺",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("中外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("中外野安打失誤",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("內野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("右外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("失誤觸殺",replacement="失誤",chiachia.forgame)
chiachia.forgame<-gsub("左外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("平飛安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("全壘打",replacement="全壘打",chiachia.forgame)
chiachia.forgame<-gsub("形成安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("刺殺封殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("刺殺封殺雙殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("保送盜壘",replacement="保送",chiachia.forgame)
chiachia.forgame<-gsub("封殺失誤",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("封殺盜壘失敗",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("封殺雙殺",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("穿越安打穿越安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("穿越安打穿越安打觸殺",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("高飛犧牲打犧牲短打",replacement="高飛犧牲打",chiachia.forgame)
chiachia.forgame<-gsub("接殺盜壘",replacement="接殺",chiachia.forgame)
chiachia.forgame<-gsub("接殺觸殺",replacement="接殺",chiachia.forgame)
chiachia.forgame<-gsub("德州安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("安打失誤",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("安打觸殺",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("雙殺",replacement="雙殺",chiachia.forgame)
chiachia.forgame<-gsub("刺殺雙殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("觸擊",replacement="犧牲短打",chiachia.forgame)
chiachia.forgame<-gsub("三壘安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("高飛犧牲打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("一壘安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("二壘安打",replacement="安打",chiachia.forgame)

# table(chiachia.forgame)


chiachia.matrix<-data.frame(numforgame=chiachia$numforgame,play=chiachia.forgame,count=c(1))%>%
filter(play!="")%>%
group_by(numforgame,play) %>%
summarise(count = n()) %>%
spread(play, count, fill = 0)

#OBP  上壘率 ( 安打+四壞球/打數+四壞球+犧牲打之總和 )
OBP<-chiachia.matrix %>%
  summarise(安打+保送+全壘打,三振+失誤+全壘打+安打+夾殺+刺殺+保送+封殺+接殺+雙殺+觸殺+犧牲短打)%>%
  `colnames<-`(c("numforgame","hit","hitnum"))
OBP<-cbind(OBP,OBP=OBP$hit/OBP$hitnum)[,c(1,4)]

#SLG 長打率((1B)+(2X2B)+(3X3B)+(4XHR)/打數)
chiachia.forgame<-chiachia$result
#gsub
chiachia.forgame<-gsub("二壘安打觸殺",replacement="二壘安打",chiachia.forgame)
chiachia.forgame<-gsub("三振投手暴投",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("三振盜壘失敗",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("三振觸殺",replacement="三振",chiachia.forgame)
chiachia.forgame<-gsub("中外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("中外野安打失誤",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("內野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("右外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("失誤觸殺",replacement="失誤",chiachia.forgame)
chiachia.forgame<-gsub("左外野安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("平飛安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("全壘打",replacement="全壘打",chiachia.forgame)
chiachia.forgame<-gsub("形成安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("刺殺封殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("刺殺封殺雙殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("保送盜壘",replacement="保送",chiachia.forgame)
chiachia.forgame<-gsub("封殺失誤",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("封殺盜壘失敗",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("封殺雙殺",replacement="封殺",chiachia.forgame)
chiachia.forgame<-gsub("穿越安打穿越安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("穿越安打穿越安打觸殺",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("高飛犧牲打犧牲短打",replacement="高飛犧牲打",chiachia.forgame)
chiachia.forgame<-gsub("接殺盜壘",replacement="接殺",chiachia.forgame)
chiachia.forgame<-gsub("接殺觸殺",replacement="接殺",chiachia.forgame)
chiachia.forgame<-gsub("德州安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("安打失誤",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("安打觸殺",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("雙殺",replacement="雙殺",chiachia.forgame)
chiachia.forgame<-gsub("刺殺雙殺",replacement="刺殺",chiachia.forgame)
chiachia.forgame<-gsub("觸擊",replacement="犧牲短打",chiachia.forgame)
#去掉不算打數的
chiachia.forgame<-gsub("三振",replacement="",chiachia.forgame)
chiachia.forgame<-gsub("保送",replacement="",chiachia.forgame)
chiachia.forgame<-gsub("犧牲短打",replacement="",chiachia.forgame)

# table(chiachia.forgame)



SLG.matrix<-data.frame(numforgame=chiachia$numforgame,play=chiachia.forgame,count=c(1))%>%
  filter(play!="")%>%
  group_by(numforgame,play) %>%
  summarise(count = n()) %>%
  spread(play, count, fill = 0)

SLG<-SLG.matrix%>%
  summarise("Base1"=一壘安打,"Base2"=二壘安打*2,"hit"=安打*1.7,"HR"=全壘打*4,"count"=一壘安打+二壘安打+失誤+全壘打+安打+夾殺+刺殺+封殺+高飛犧牲打+接殺+雙殺+觸殺)

SLG<-SLG%>%
  group_by(numforgame)%>%
  summarise(SLGHIT=hit+HR+Base1+Base2,count)

SLG<-data.frame(numforgame=SLG$numforgame,SLG=SLG$SLGHIT/SLG$count)

#合併SLG,OBP
matrix<-merge(SLG,OBP,by="numforgame")
#整體攻擊指數OPS=SLG+OBP
OPS=matrix$SLG+matrix$OBP
matrix.OPS<-data.frame(numforgame=matrix$numforgame,OPS)


#+geom_point() 
#+geom_line()
#+geom_smooth()
OPS.score<-matrix.OPS$OPS
ggplot(matrix.OPS, aes(x = numforgame, y = OPS.score))+geom_smooth()
write.csv(matrix.OPS,"D:/CPBL/offensive_db/functions/judy/2.都市傳說/output/chiachia(OPS).matrix.csv",row.names=FALSE)



