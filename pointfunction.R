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






return(point)

}