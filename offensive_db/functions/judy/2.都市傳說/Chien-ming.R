library(dplyr)
Foreigner<-read.csv("E:/CPBL/offensive_db/functions/judy/2.都市傳說/input/Foreigner.csv")
off_db<-readRDS("E:/CPBL/offensive_db/functions/judy/2.都市傳說/input/off_db.RDS")



# tmp.p<-cbind(
# grep("投手:",head(off_db$log,1000)),
# off_db[,"log"][(grep("投手:",head(off_db$log,1000)))]%>%as.character())
# substr(head(off_db$log,1000),regexpr("投手:",head(off_db$log,1000))+3,regexpr("投手:",head(off_db$log,1000))+5)

#外籍投手在哪兒
c.num<-NULL
for(i in 1:length(Foreigner[,2]%>%as.character())){
num<-grep((Foreigner[,2]%>%as.character())[i],off_db$log)
c.num<-c(c.num,num)
}
c.num.unique<-c.num%>%unique()%>%sort()




Chienming.play<-filter(off_db,Player=="張建銘")
Chienming.play%>%colnames()

