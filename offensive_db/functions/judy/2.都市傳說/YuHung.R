library(dplyr)
library(tidyr)
library(ggplot2)
#讀取
off_db<-readRDS("E:/CPBL/offensive_db/functions/judy/2.都市傳說/input/off_db.RDS")

#filter"林泓育"
fliter.Player<-off_db[grep("林泓育",off_db$Player),]
# write.csv(fliter.Player,"E:/CPBL/offensive_db/functions/judy/2.都市傳說/output/fliter.Player.csv",row.names=FALSE)

update.result<-fliter.Player$result
#gsub
update.result<-gsub("二壘安打觸殺",replacement="二壘安打",update.result)
update.result<-gsub("三振投手暴投",replacement="三振",update.result)
update.result<-gsub("三振盜壘失敗",replacement="三振",update.result)
update.result<-gsub("三振觸殺",replacement="三振",update.result)
update.result<-gsub("中外野安打",replacement="安打",update.result)
update.result<-gsub("中外野安打失誤",replacement="安打",update.result)
update.result<-gsub("內野安打",replacement="安打",update.result)
update.result<-gsub("右外野安打",replacement="安打",update.result)
update.result<-gsub("失誤觸殺",replacement="失誤",update.result)
update.result<-gsub("左外野安打",replacement="安打",update.result)
update.result<-gsub("平飛安打",replacement="安打",update.result)
update.result<-gsub("全壘打",replacement="全壘打",update.result)
update.result<-gsub("形成安打",replacement="安打",update.result)
update.result<-gsub("刺殺封殺",replacement="刺殺",update.result)
update.result<-gsub("刺殺封殺雙殺",replacement="刺殺",update.result)
update.result<-gsub("保送盜壘",replacement="保送",update.result)
update.result<-gsub("封殺失誤",replacement="封殺",update.result)
update.result<-gsub("封殺盜壘失敗",replacement="封殺",update.result)
update.result<-gsub("封殺雙殺",replacement="封殺",update.result)
update.result<-gsub("穿越安打穿越安打",replacement="安打",update.result)
update.result<-gsub("穿越安打穿越安打觸殺",replacement="安打",update.result)
update.result<-gsub("高飛犧牲打犧牲短打",replacement="高飛犧牲打",update.result)
update.result<-gsub("接殺盜壘",replacement="接殺",update.result)
update.result<-gsub("接殺觸殺",replacement="接殺",update.result)
update.result<-gsub("德州安打",replacement="安打",update.result)
update.result<-gsub("安打失誤",replacement="安打",update.result)
update.result<-gsub("安打觸殺",replacement="安打",update.result)
update.result<-gsub("雙殺",replacement="雙殺",update.result)
update.result<-gsub("刺殺雙殺",replacement="刺殺",update.result)
update.result<-gsub("觸擊",replacement="犧牲短打",update.result)
update.result<-gsub("一壘安打",replacement="安打",update.result)
update.result<-gsub("二壘安打",replacement="安打",update.result)
update.result<-gsub("三壘安打",replacement="安打",update.result)
update.result<-gsub("犧牲短打",replacement="安打",update.result)
update.result<-gsub("高飛犧牲打",replacement="安打",update.result)
update.result<-gsub("三振盜壘投手暴投",replacement="三振",update.result)
update.result<-gsub("安打犧牲安打",replacement="安打",update.result)
update.result<-gsub("失誤安打",replacement="安打",update.result)
update.result<-gsub("刺殺失誤",replacement="刺殺",update.result)
update.result<-gsub("刺殺接殺",replacement="刺殺",update.result)
update.result<-gsub("盜壘失敗觸殺",replacement="觸殺",update.result)
#update.result%>%table()
update.result<-gsub("三振",replacement="OUT",update.result)
update.result<-gsub("三振",replacement="OUT",update.result)
update.result<-gsub("失誤",replacement="OUT",update.result)
update.result<-gsub("夾殺",replacement="OUT",update.result)
update.result<-gsub("刺殺",replacement="OUT",update.result)
update.result<-gsub("封殺",replacement="OUT",update.result)
update.result<-gsub("接殺",replacement="OUT",update.result)
update.result<-gsub("雙殺",replacement="OUT",update.result)
update.result<-gsub("觸殺",replacement="OUT",update.result)
update.result<-gsub("全壘打",replacement="上壘",update.result)
update.result<-gsub("安打",replacement="上壘",update.result)
update.result<-gsub("保送",replacement="上壘",update.result)
#update.result%>%table()

#new result
fliter.Player[,"result"]=update.result

#DH VS NANDH
fliter.PlayerDH<-fliter.Player[grep("DH",fliter.Player$log),]
fliter.PlayerNANDH<-fliter.Player[-grep("DH",fliter.Player$log),]

#DH.score
DH.score<-
data.frame(numforgame=fliter.PlayerDH$numforgame,play=fliter.PlayerDH$result,count=c(1))%>%
filter(play!="")%>%
group_by(play) %>%
summarise(sum(count))

#NANDH.score
NANDH.score<-
data.frame(numforgame=fliter.PlayerNANDH$numforgame,play=fliter.PlayerNANDH$result,count=c(1))%>%
filter(play!="")%>%
group_by(play) %>%
summarise(sum(count))


#計算
#DH    0.3643725 
DH.score$`sum(count)`[2]/DH.score$`sum(count)`%>%sum()
#NANDH 0.3597561
NANDH.score$`sum(count)`[2]/NANDH.score$`sum(count)`%>%sum()

#卡方檢定
#         kind   OUT  上壘
#        (fctr) (dbl) (dbl)
#   1     DH     157    90
#   2    NANDH   105    59
table.chisq<-rbind(cbind(kind=c("DH"),DH.score),cbind(kind=c("NANDH"),NANDH.score))%>%
data.frame()%>%
group_by(kind,play)%>%
spread(play,sum.count., fill = 0)
table.chisq<-data.frame(table.chisq[,2],table.chisq[,3])
row.names(table.chisq)<-c("DH","NANDH")
table.chisq
table.chisq%>%chisq.test()

##plot 趨勢圖
#DH
fliter.Player.DH.matrix<-
  data.frame(numforgame=fliter.PlayerDH$numforgame,play=fliter.PlayerDH$result,count=c(1))%>%
  filter(play!="")%>%
  group_by(numforgame,play) %>%
  summarise(count = n()) %>%
  spread(play, count, fill = 0)

DH.matrix<-data.frame(fliter.Player.DH.matrix,rating=fliter.Player.DH.matrix$上壘/(fliter.Player.DH.matrix$OUT+fliter.Player.DH.matrix$上壘))

#NANDH
fliter.Player.NANDH.matrix<-
  data.frame(numforgame=fliter.PlayerNANDH$numforgame,play=fliter.PlayerNANDH$result,count=c(1))%>%
  filter(play!="")%>%
  group_by(numforgame,play) %>%
  summarise(count = n()) %>%
  spread(play, count, fill = 0)

NANDH.matrix<-data.frame(fliter.Player.NANDH.matrix,rating=fliter.Player.NANDH.matrix$上壘/(fliter.Player.NANDH.matrix$OUT+fliter.Player.NANDH.matrix$上壘))

#畫圖
plot.matrix<-rbind(cbind(NANDH.matrix,kind=c("NANDH")),cbind(DH.matrix,kind=c("DH")))
score<-plot.matrix$rating%>%sqrt()%>%sqrt()
ggplot(plot.matrix, aes(x = numforgame, y = score))+geom_smooth()+facet_grid(.~kind)


