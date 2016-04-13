
specialcircumstancesfunction=function(){



x.substr=substr(x,regexpr("[:]", x),regexpr("[:]", x)+100)
specialcircumstances=
(grepl("[一][出][局]",x)&grepl("[三][出][局]",x))=="TRUE" |
(grepl("[一][出][局]",x)&grepl("[二][出][局]",x))=="TRUE" |
(grepl("[二][出][局]",x)&grepl("[三][出][局]",x))=="TRUE" |
  x.substr%>%nchar()>30 |
grepl(".*[，].*[，].*[，]",x) |
grepl("[暴][投]",x) |
grepl("[暴][傳]",x) |
grepl("[失][誤]",x) |
grep("[出][局].*[盜][上]",x) |
grep("[打].*[盜]",x)


#:....):(.... 第3後面有中文


#wherespecialcircumstances=which(specialcircumstances==TRUE)
#length(wherespecialcircumstances)/length(x)*100

return(specialcircumstances)
}