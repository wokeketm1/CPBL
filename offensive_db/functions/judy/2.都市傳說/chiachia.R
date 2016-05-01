library(dplyr)
library(tidyr)
library(ggplot2)
#讀取
off_db<-readRDS("E:/CPBL/offensive_db/functions/judy/2.都市傳說/input/off_db.RDS")

#filter"彭政閔"
chiachia<-off_db[grep("彭政閔",off_db$Player),]
# write.csv(chiachia,"E:/CPBL/offensive_db/functions/judy/2.都市傳說/output/chiachia.csv",row.names=FALSE)

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
chiachia.forgame<-gsub("一壘安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("二壘安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("三壘安打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("犧牲短打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("高飛犧牲打",replacement="安打",chiachia.forgame)
chiachia.forgame<-gsub("三振",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("三振",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("失誤",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("夾殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("刺殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("封殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("接殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("雙殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("觸殺",replacement="OUT",chiachia.forgame)
chiachia.forgame<-gsub("全壘打",replacement="上壘",chiachia.forgame)
chiachia.forgame<-gsub("安打",replacement="上壘",chiachia.forgame)
chiachia.forgame<-gsub("保送",replacement="上壘",chiachia.forgame)


chiachia.matrix<-data.frame(numforgame=chiachia$numforgame,play=chiachia.forgame,count=c(1))%>%
filter(play!="")%>%
group_by(numforgame,play) %>%
summarise(count = n()) %>%
spread(play, count, fill = 0)

matrix<-data.frame(chiachia.matrix,rating=chiachia.matrix$上壘/(chiachia.matrix$OUT+chiachia.matrix$上壘))


#+geom_point() 
#+geom_line()
#+geom_smooth()
score<-matrix$rating%>%sqrt()%>%sqrt()
ggplot(matrix, aes(x = numforgame, y = score))+geom_smooth()
write.csv(chiachia.matrix,"E:/CPBL/offensive_db/functions/judy/2.都市傳說/output/chiachia.matrix.csv",row.names=FALSE)
# summarise(grp,,sum(count))
# table(chiachia.matrix$result)


# 安打
# 全壘打
# 三振
# 保送
# out
# #整季
# chiachia.summary<-chiachia$result%>%summary()
# data.frame(count=chiachia.summary[which((chiachia.summary>0)==TRUE)])

