
inningfunction=function()
{
##上下局

up=character(length(x))
down=character(length(x))
up[grep("[0-9][上]",x)]=x[grep("[0-9][上]",x)]
down[grep("[0-9][下]",x)]=x[grep("[0-9][下]",x)]
inning=paste0(up,down)


##填滿上下局
text=inning[inning!=""]

if(inning[1]==""){
for(i in 1:(which(inning==text[1]))){
if(inning[i]==""){inning[i]="1上"}
}}

#判斷是否有中途停止比賽 if
if(length(grep("[9][上]",inning))==0){

#舉例94場只有到6下 一上>六下
for(i in which(inning==text[1]):which(inning==(text[length(text)]))){
if(inning[i]==""){inning[i]=inning[i-1]}
}
for(i in 1:length(inning)){
if(inning[i]==""){inning[i]=inning[i-1]}
}

# else 9下到12下
}else{

for(i in which(inning==text[1]):which(inning==text[17])){
if(inning[i]==""){inning[i]=inning[i-1]}
}
#12下
if(length(text)==24){
for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):(which(inning==text[(20)])-1)){
    if(inning[i]==""){inning[i]=text[19]}
    }
for(i in (which(inning==text[20])):(which(inning==text[(21)])-1)){
    if(inning[i]==""){inning[i]=text[20]}
    }
for(i in (which(inning==text[21])):(which(inning==text[(22)])-1)){
    if(inning[i]==""){inning[i]=text[21]}
    }
for(i in (which(inning==text[22])):(which(inning==text[(23)])-1)){
    if(inning[i]==""){inning[i]=text[22]}
    }
for(i in (which(inning==text[23])):(which(inning==text[(24)])-1)){
    if(inning[i]==""){inning[i]=text[23]}
    }
for(i in (which(inning==text[24])):length(inning)){
    if(inning[i]==""){inning[i]=text[24]}
    }
#12上
}else if (length(text)==23){
for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):(which(inning==text[(20)])-1)){
    if(inning[i]==""){inning[i]=text[19]}
    }
for(i in (which(inning==text[20])):(which(inning==text[(21)])-1)){
    if(inning[i]==""){inning[i]=text[20]}
    }
for(i in (which(inning==text[21])):(which(inning==text[(22)])-1)){
    if(inning[i]==""){inning[i]=text[21]}
    }
for(i in (which(inning==text[22])):(which(inning==text[(23)])-1)){
    if(inning[i]==""){inning[i]=text[22]}
    }
for(i in (which(inning==text[23])):length(inning)){
    if(inning[i]==""){inning[i]=text[23]}
    }
#11下
}else if (length(text)==22){
for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):(which(inning==text[(20)])-1)){
    if(inning[i]==""){inning[i]=text[19]}
    }
for(i in (which(inning==text[20])):(which(inning==text[(21)])-1)){
    if(inning[i]==""){inning[i]=text[20]}
    }
for(i in (which(inning==text[21])):(which(inning==text[(22)])-1)){
    if(inning[i]==""){inning[i]=text[21]}
    }
for(i in (which(inning==text[22])):length(inning)){
    if(inning[i]==""){inning[i]=text[22]}
    }

#11上
}else if (length(text)==21){

for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):(which(inning==text[(20)])-1)){
    if(inning[i]==""){inning[i]=text[19]}
    }
for(i in (which(inning==text[20])):(which(inning==text[(21)])-1)){
    if(inning[i]==""){inning[i]=text[20]}
    }
for(i in (which(inning==text[21])):length(inning)){
    if(inning[i]==""){inning[i]=text[21]}
    }
#10下
}else if (length(text)==20){


for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):(which(inning==text[(20)])-1)){
    if(inning[i]==""){inning[i]=text[19]}
    }
for(i in (which(inning==text[20])):length(inning)){
    if(inning[i]==""){inning[i]=text[20]}
    }


#10上
}else if (length(text)==19){

for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):(which(inning==text[(19)])-1)){
    if(inning[i]==""){inning[i]=text[18]}
    }
for(i in (which(inning==text[19])):length(inning)){
    if(inning[i]==""){inning[i]=text[19]}
    }


#9下
}else if (length(text)==18){

for(i in (which(inning==text[17])):(which(inning==text[(18)])-1)){
    if(inning[i]==""){inning[i]=text[17]}
    }
for(i in (which(inning==text[18])):length(inning)){
    if(inning[i]==""){inning[i]=text[18]}
    }


#9上
}else if (length(text)==17){

for(i in (which(inning==text[17])):length(inning)){
    if(inning[i]==""){inning[i]=text[17]}
    }
}else{print("inningfunction!WRONG!")}

}



return(inning)
}
