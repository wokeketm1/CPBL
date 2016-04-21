x

inningfunction=function()
{
##上下局
up=character(length(x))
down=character(length(x))
up[grep("[1-9]*[0-9][上]",x)]=grep("[1-9]*[0-9][上]",x,value = TRUE)
down[grep("[1-9]*[0-9][下]",x)]=grep("[1-9]*[0-9][下]",x,value = TRUE)
inning=paste0(up,down)

##找出出現的上下半局
text=inning[inning!=""]

##填補第一個為1上
if(inning[1]==""){
for(i in 1:(which(inning==text[1]))){
if(inning[i]==""){inning[i]="1上"}
}}

##填補空位
for(i in 1:length(x)){
  if(inning[i]==""){
  inning[i]=inning[i-1]}
  }
return(inning)
}
