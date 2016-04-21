follow.upfunction=function(x)
{
  #上半局
  up<-substr(away,regexpr("[(]", away)+1,regexpr("[)]", away)-1)%>%as.numeric()
  uppoint<-cbind(up[grep("[1-9]*[0-9][上]",inning)],grep("[1-9]*[0-9][上]",inning,value = TRUE))
  up_inn_index <- grep("[1-9]*[0-9][上]",x,value=TRUE)
  for(i in 1:length(up_inn_index)){
    tmp                        <-uppoint[grep(up_inn_index[i],uppoint[,2])]%>%as.numeric()
    one.inning.last.point      <-uppoint[grep(up_inn_index[i],uppoint[,2])][(length(tmp))]%>%as.numeric()
    uppoint[,1][grep(up_inn_index[i],uppoint[,2])]<-one.inning.last.point-tmp
  }
  uppoint<-uppoint[,1]
  
  
  #下半局
  down<-substr(home,regexpr("[(]", home)+1,regexpr("[)]", home)-1)%>%as.numeric()
  downpoint<-cbind(down[grep("[1-9]*[0-9][下]",inning)],grep("[1-9]*[0-9][下]",inning,value = TRUE))
  down_inn_index <- grep("[1-9]*[0-9][下]",x,value=TRUE)
  
  for(i in 1:length(down_inn_index)){
    tmp                        <-downpoint[grep(down_inn_index[i],downpoint[,2])]%>%as.numeric()
    one.inning.last.point      <-downpoint[grep(down_inn_index[i],downpoint[,2])][(length(tmp))]%>%as.numeric()
    downpoint[,1][grep(down_inn_index[i],downpoint[,2])]<-one.inning.last.point-tmp
  }
  downpoint<-downpoint[,1]
  
  
  #上下局合併成followpoint
  followpoint<-numeric(length(x))
  followpoint[grep("[1-9]*[0-9][上]",inning)]<-uppoint
  followpoint[grep("[1-9]*[0-9][下]",inning)]<-downpoint
  
  #解>10局分數變負號BUG
  for(i in 1:length(followpoint)){
  if(followpoint[i]<0){followpoint[i]=followpoint[i]%>%as.numeric()*(-1)}
  }
  
  return(followpoint)
}