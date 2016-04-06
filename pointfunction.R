pointfunction=function()
{
##比分
pointname<-regexpr("\\):\\(", x)
point=substr(x,pointname-4,pointname)


##填滿比分數point先填滿第一狀態再填後面
pointmatrix=point[point!=""]
whichpoint=which(point!="")
for(i in 1:(whichpoint[1])){
    if(point[i]==""){point[i]=pointmatrix[1]}
}
for(i in 1:length(point)){
if(point[i]==""){point[i]=point[(i-1)]}
}


return(point)
}