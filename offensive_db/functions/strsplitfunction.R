strsplitfunction<-function(x){
  
  grepgetpoint<-grep("[統][一][(][1-9]*[0-9][)][:]",x)
  x[grepgetpoint]<-gsub(pattern = "[統][一]",replacement = "##統一",x[grepgetpoint])
  
  grepgetpoint<-grep("[義][大][(][1-9]*[0-9][)][:]",x)
  x[grepgetpoint]<-gsub(pattern = "[義][大]",replacement = "##義大",x[grepgetpoint])
  
  grepgetpoint<-grep("[兄][弟][(][1-9]*[0-9][)][:]",x)
  x[grepgetpoint]<-gsub(pattern = "[兄][弟]",replacement = "##兄弟",x[grepgetpoint])
  
  grepgetpoint<-grep("[桃][猿][(][1-9]*[0-9][)][:]",x)
  x[grepgetpoint]<-gsub(pattern = "[桃][猿]",replacement = "##桃猿",x[grepgetpoint])
  
  
  grepgetpoint<-grep("[:][(][1-9]*[0-9][)][統][一]",x)
  x[grepgetpoint]<-gsub(pattern = "[統][一]",replacement = "統一##",x[grepgetpoint])
  
  grepgetpoint<-grep("[:][(][1-9]*[0-9][)][義][大]",x)
  x[grepgetpoint]<-gsub(pattern = "[義][大]",replacement = "義大##",x[grepgetpoint])
  
  grepgetpoint<-grep("[:][(][1-9]*[0-9][)][兄][弟]",x)
  x[grepgetpoint]<-gsub(pattern = "[兄][弟]",replacement = "兄弟##",x[grepgetpoint])
  
  grepgetpoint<-grep("[:][(][1-9]*[0-9][)][桃][猿]",x)
  x[grepgetpoint]<-gsub(pattern = "[桃][猿]",replacement = "桃猿##",x[grepgetpoint])
  
  for(i in 1:20){
  x<-gsub(pattern = paste0(i,"[.]"),replacement = paste0("##",i,"."),x)
  }
  
  return(strsplit(x, split="##")%>%unlist())
}

