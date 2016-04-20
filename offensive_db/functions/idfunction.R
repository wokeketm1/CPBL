idfunction=function(){
StartName <- regexpr("第",x)
EndName<- regexpr("棒", x)
num<-substr(x,StartName,EndName)

return(num)
}