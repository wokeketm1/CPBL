pointfunction=function()
{
##比分
pointname<-regexpr("\\):\\(", x)
point=substr(x,pointname-4,pointname)


##填滿比分數point先填滿第一狀態再填後面
pointmatrix=point[point!=""]

if (length(pointmatrix)!=0){
                    whichpoint=which(point!="")
                    for(i in 1:(whichpoint[1])){
                    if(point[i]==""){point[i]=pointmatrix[1]}
                    }
                    for(i in 1:length(point)){
                    if(point[i]==""){point[i]=point[(i-1)]}
                    }
}else if(length(pointmatrix)==0){
                    point=substr(x,regexpr("[0-9][:][0-9]", x)-2,regexpr("[0-9][:][0-9]", x))
                    pointmatrix=point[point!=""]
                    whichpoint=which(point!="")
                    for(i in 1:(whichpoint[1])){
                    if(point[i]==""){point[i]=pointmatrix[1]}
                    }
                    for(i in 1:length(point)){
                    if(point[i]==""){point[i]=point[(i-1)]}
                    }
point <- gsub("0",replacement="(0)",point)
point <- gsub("1",replacement="(1)",point)
point <- gsub("2",replacement="(2)",point)
point <- gsub("3",replacement="(3)",point)
point <- gsub("4",replacement="(4)",point)
point <- gsub("5",replacement="(5)",point)
point <- gsub("6",replacement="(6)",point)
point <- gsub("7",replacement="(7)",point)
point <- gsub("8",replacement="(8)",point)
point <- gsub("9",replacement="(9)",point)
}else(print("pointWRONG!!!"))


if(length(grep("^[大]",point))!=0){
point [grep("^[大]",point)]<- gsub("大",replacement="義大",point[grep("^[大]",point)])
}else if(length(grep("^[一]",point))!=0){
point [grep("^[一]",point)]<- gsub("一",replacement="統一",point[grep("^[一]",point)])
}else if(length(grep("^[弟]",point))!=0){
point[grep("^[弟]",point)] <- gsub("弟",replacement="兄弟",point[grep("^[弟]",point)])
}else if(length(grep("^[猿]",point))!=0){
point[grep("^[猿]",point)] <- gsub("猿",replacement="桃猿",point[grep("^[猿]",point)])
}

return(point)

}