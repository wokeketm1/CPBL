point3function=function()
{
pointname<-regexpr("\\):\\(", x)
point=substr(x,pointname-4,pointname)
point2=substr(x,pointname+2,pointname+6)
point3=numeric(length(point))
for(i in 1:length(point))
{
if(point[i]!=""){point3[i]=point2[i]
}else{point3[i]=""}
}


##填滿比分數point3先填滿第一狀態再填後面
point3matrix=point3[point3!=""]
whichpoint3=which(point3!="")
for(i in 1:(whichpoint3[1])){
    if(point3[i]==""){point3[i]=point3matrix[1]}
}
for(i in 1:length(point3)){
if(point3[i]==""){point3[i]=point3[(i-1)]}
}


return(point3)
}




