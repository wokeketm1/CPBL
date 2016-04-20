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

if (length(point3matrix)!=0){

whichpoint3=which(point3!="")
for(i in 1:(whichpoint3[1])){
    if(point3[i]==""){point3[i]=point3matrix[1]}
}
for(i in 1:length(point3)){
if(point3[i]==""){point3[i]=point3[(i-1)]}
}

}else if(length(point3matrix)==0){

point=substr(x,regexpr("[0-9][:][0-9]", x)-2,regexpr("[0-9][:][0-9]", x))
point2=substr(x,regexpr("[0-9][:][0-9]", x)+2,regexpr("[0-9][:][0-9]", x)+4)
point3=numeric(length(point))
for(i in 1:length(point))
{
if(point[i]!=""){point3[i]=point2[i]
}else{point3[i]=""}
}
point3matrix=point3[point3!=""]
whichpoint3=which(point3!="")
for(i in 1:(whichpoint3[1])){
    if(point3[i]==""){point3[i]=point3matrix[1]}
}
for(i in 1:length(point3)){
if(point3[i]==""){point3[i]=point3[(i-1)]}
}
point3 <- gsub("0",replacement="(0)",point3)
point3 <- gsub("1",replacement="(1)",point3)
point3 <- gsub("2",replacement="(2)",point3)
point3 <- gsub("3",replacement="(3)",point3)
point3 <- gsub("4",replacement="(4)",point3)
point3 <- gsub("5",replacement="(5)",point3)
point3 <- gsub("6",replacement="(6)",point3)
point3 <- gsub("7",replacement="(7)",point3)
point3 <- gsub("8",replacement="(8)",point3)
point3 <- gsub("9",replacement="(9)",point3)

}else(print("point3WRONG!!!"))

if(length(grep("[義]$",point3))!=0){
point3[grep("[義]$",point3)] <- gsub("義",replacement="義大",point3[grep("[義]$",point3)])
}else if(length(grep("[統]$",point3))!=0){
point3[grep("[統]$",point3)] <- gsub("統",replacement="統一",point3[grep("[統]$",point3)])
}else if(length(grep("[兄]$",point3))!=0){
point3[grep("[兄]$",point3)] <- gsub("兄",replacement="兄弟",point3[grep("[兄]$",point3)])
}else if(length(grep("[桃]$",point3))!=0){
point3[grep("[桃]$",point3)] <- gsub("桃",replacement="桃猿",point3[grep("[桃]$",point3)])
}



return(point3)
}



