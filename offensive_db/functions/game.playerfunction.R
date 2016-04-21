
game.playerfunction<-function(x,numforgame){

#batter處理後資料
batter<-batterfunction()
game.player<-filter(batter, game == numforgame) %>%select(sub.batter)
game.player.filter<-game.player[,1]%>%as.character()

output=NULL
for(i in 1:length(game.player.filter)){
  batter.player<-character(length(x))
  batter.player[grep(game.player.filter[i],x)]<-game.player.filter[i]
  output=paste0(output,batter.player)
}

return(output)
}

