Playerfunction=function(){
EndName<- regexpr("棒", x)
Name<- regexpr(":", x)
player<-substr(x,EndName+1,Name-1)
player<-substr(player,(regexpr("[^1-9a-zA-Z]", player)),(regexpr("[^1-9a-zA-Z]", player)+100))

player[(which(regexpr("[\\(][0-9]",player) != -1))]=""
player[(which(regexpr("[統義兄桃][一大弟猿]",player) != -1))]=""

return(player)
}
