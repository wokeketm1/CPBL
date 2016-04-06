
inningfunction=function()
{
##上下局

up=substr(x,regexpr("[1-9][上]", x),regexpr("[1-9][上]", x)+1)
down=substr(x,regexpr("[1-9][下]", x),regexpr("[1-9][下]", x)+1)
inning=paste0(up,down)

##填滿上下局
text=inning[inning!=""]

if(inning[1]==""){
for(i in 1:(which(inning=="1上"))){
if(inning[i]==""){inning[i]="1上"}
}}

for(i in which(inning=="1上"):which(inning=="9上")){
if(inning[i]==""){inning[i]=inning[i-1]}
}


if ( text[length(text)] == "9上"){
   for(i in (which(inning==text[17])):length(inning)){
   if(inning[i]==""){inning[i]=text[17]}
   }
}else if (text[length(text)] == "9下"){
    for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
    for(i in (which(inning==text[18])):length(inning)){
    if(inning[i]==""){inning[i]=text[18]}
    }
}else{print("WRONG!WRONG!WRONG!WRONG!WRONG!")}

return(inning)
}

