
follow.upfunction=function()
{
##上下局在哪

up=substr(x,regexpr("[1-9][上]", x),regexpr("[1-9][上]", x)+1)
down=substr(x,regexpr("[1-9][下]", x),regexpr("[1-9][下]", x)+1)
inningbyfollow.up=paste0(up,down)
text=inningbyfollow.up[inningbyfollow.up!=""]
changeinning=which((inningbyfollow.up!=""))

#awaytemp=away 
#awaytemp[grep("[下]",inning)]=""
#hometemp=home
#hometemp[grep("[上]",inning)]=""
#cbind(inning,awaytemp,hometemp,follow.up,follow.up2)


#抓比分
awaypoint=substr(away,regexpr("[0-9]", away),regexpr("[0-9]", away))%>%as.numeric()
homepoint=substr(home,regexpr("[0-9]", home),regexpr("[0-9]", home))%>%as.numeric()


follow.up=awaypoint
follow.up[grep("[下]",inning)]=homepoint[grep("[下]",inning)]
follow.up2=numeric(length(follow.up))


#1~7 一上
for (i in (changeinning[1]):(changeinning[2]-1)){
follow.up2[i]=follow.up[changeinning[2]-1]-follow.up[changeinning[1]]
}
#8~13 一下
for (i in changeinning[2]:(changeinning[3]-1)){
follow.up2[i]=follow.up[changeinning[3]-1]-follow.up[changeinning[2]]
}
#14~18 二上
for (i in changeinning[3]:(changeinning[4]-1)){
follow.up2[i]=follow.up[changeinning[4]-1]-follow.up[changeinning[3]]
}

#19~27 二下
for (i in (changeinning[4]):(changeinning[5]-1)){
follow.up2[i]=((follow.up[(changeinning[5]-1)])-(follow.up[(changeinning[4])]))
}


#28~35 3上
for (i in changeinning[5]:(changeinning[6]-1)){
follow.up2[i]=follow.up[changeinning[6]-1]-follow.up[changeinning[5]]
}

#36~45 3下
for (i in changeinning[6]:(changeinning[7]-1)){
follow.up2[i]=follow.up[changeinning[7]-1]-follow.up[changeinning[6]]
}

#46~56 4上
for (i in changeinning[7]:(changeinning[8]-1)){
follow.up2[i]=follow.up[changeinning[8]-1]-follow.up[changeinning[7]]
}

#57~66 4下
for (i in changeinning[8]:(changeinning[9]-1)){
follow.up2[i]=follow.up[changeinning[9]-1]-follow.up[changeinning[8]]
}

#67~71 5上
for (i in changeinning[9]:(changeinning[10]-1)){
follow.up2[i]=follow.up[changeinning[10]-1]-follow.up[changeinning[9]]
}

#72~77 5下
for (i in changeinning[10]:(changeinning[11]-1)){
follow.up2[i]=follow.up[changeinning[11]-1]-follow.up[changeinning[10]]
}

#78~82 6上
for (i in changeinning[11]:(changeinning[12]-1)){
follow.up2[i]=follow.up[changeinning[12]-1]-follow.up[changeinning[11]]
}

#83~89 6下
for (i in changeinning[12]:(changeinning[13]-1)){
follow.up2[i]=follow.up[changeinning[13]-1]-follow.up[changeinning[12]]
}

#90~98 7上
for (i in changeinning[13]:(changeinning[14]-1)){
follow.up2[i]=follow.up[changeinning[14]-1]-follow.up[changeinning[13]]
}

#99~112 7下
for (i in changeinning[14]:(changeinning[15]-1)){
follow.up2[i]=follow.up[changeinning[15]-1]-follow.up[changeinning[14]]
}

#113~119 8上
for (i in changeinning[15]:(changeinning[16]-1)){
follow.up2[i]=follow.up[changeinning[16]-1]-follow.up[changeinning[15]]
}

#120~124 8下
for (i in changeinning[16]:(changeinning[17]-1)){
follow.up2[i]=follow.up[changeinning[17]-1]-follow.up[changeinning[16]]
}


#125~130 9上 如果有9下

if (text[length(text)]=="9上"){
for (i in changeinning[17]:(length(follow.up2))){
follow.up2[i]=follow.up[(length(follow.up2))]-follow.up[changeinning[17]]}

}else if(text[length(text)]=="9下"){
for (i in changeinning[17]:(changeinning[18]-1)){
follow.up2[i]=follow.up[changeinning[18]-1]-follow.up[changeinning[17]]}
for (i in changeinning[18]:(length(follow.up2))){
follow.up2[i]=follow.up[(length(follow.up2))]-follow.up[changeinning[18]]}

}else{print("WRONG")}


return(follow.up2)
}

