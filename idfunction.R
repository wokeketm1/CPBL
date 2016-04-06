idfunction=function(){
StartName <- regexpr("²Ä",x)
EndName<- regexpr("´Î", x)
num<-substr(x,StartName,EndName)

return(num)
}