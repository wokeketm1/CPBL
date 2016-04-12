
extrathingfunction=function(){



x.substr=substr(x,regexpr("[:]", x),regexpr("[:]", x)+100)
extrathing=
(grepl("[一][出][局]",x)&grepl("[三][出][局]",x))=="TRUE" |
(grepl("[一][出][局]",x)&grepl("[二][出][局]",x))=="TRUE" |
  x.substr%>%nchar()>30 |
grepl(".*[，].*[，].*[，]",x) |
grepl("[暴][投]",x) |
grepl("[暴][傳]",x) |
grepl("[失][誤]",x)
#whereextrathing=which(extrathing==TRUE)
#length(whereextrathing)/length(x)*100

return(extrathing)
}