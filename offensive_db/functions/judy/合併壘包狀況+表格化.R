x=read.csv("C:/Users/Student/Desktop/output/output04184.csv")
y=read.csv("C:/Users/Student/Desktop/output/offensive_db.csv")
nrow(y)
nrow(x)
z=cbind(x,y)

write.csv(z,paste0("C:/Users/Student/Desktop/bind0418.csv"),row.names=FALSE)


#read
log<-read.csv("C:/Users/Student/Desktop/bind0418.csv")

#sort col
relogcol<-log[,c(1:3,13,4:11,14:19,12)]

#found specialcircumstances==true to_check==1
needcheck<-grepl("TRUE",relogcol[,3])|grepl("1",relogcol[,18])

#if(specialcircumstances==true | to_check==1){needcheckrow==1}
needcheckrow<-character(nrow(relogcol))
for(i in 1:length(1:nrow(relogcol))){
if (grepl("TRUE",needcheck)[i]){
  needcheckrow[i]<-"1"
}}

#write csv
output<-cbind(relogcol,needcheckrow)
write.csv(output,"C:/Users/Student/Desktop/bind04183.csv",row.names = FALSE)



