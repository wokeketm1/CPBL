Playerfunction=function(){
EndName<- regexpr("棒", x)
Name<- regexpr(":", x)
player<-substr(x,EndName+1,Name-1)
player<-substr(player,(regexpr("[^1-9a-zA-Z]", player)),(regexpr("[^1-9a-zA-Z]", player)+100))

player[(which(regexpr("[\\(][0-9]",player) != -1))]=""
player[(which(regexpr("[統義兄桃][一大弟猿]",player) != -1))]=""


player <- gsub("1B",replacement="",player)
player <- gsub("2B",replacement="",player)
player <- gsub("3B",replacement="",player)
player <- gsub("SS",replacement="",player)
player <- gsub("C",replacement="",player)
player <- gsub("LF",replacement="",player)
player <- gsub("CF",replacement="",player)
player <- gsub("RF",replacement="",player)
player <- gsub("DH",replacement="",player)
player <- gsub("，",replacement="",player)
player <- gsub("比賽結束",replacement="",player)
player <- gsub("比賽開始",replacement="",player)
return(player)
}
