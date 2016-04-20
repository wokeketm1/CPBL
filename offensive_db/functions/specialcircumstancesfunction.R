
specialcircumstancesfunction=function(){



x.substr=substr(x,regexpr("[:]", x),regexpr("[:]", x)+100)

A<-(grepl("[第].*[棒].*[第].*[棒].*[代][打]",x))
B<-(grepl("[第].*[棒].*[第].*[棒]",x))
C<-NULL

for(i in 1:length(x)){
  C[i]=(B[i]==TRUE & A [i]==FALSE)
}

specialcircumstances=
C  |
(grepl("[一][出][局]",x)&grepl("[三][出][局]",x))=="TRUE" |
(grepl("[一][出][局]",x)&grepl("[二][出][局]",x))=="TRUE" |
(grepl("[二][出][局]",x)&grepl("[三][出][局]",x))=="TRUE" |
  x.substr%>%nchar()>30 |
grepl(".*[，].*[，].*[，]",x) |
grepl("[暴][投]",x) |
grepl("[暴][傳]",x) |
grepl("[失][誤]",x) |
grepl("[出][局].*[盜][上]",x) | 
grepl("[打].*[盜]",x)|
grepl("[保][送].*[盜]",x)|
grepl("[盜].*[保][送]",x)
grepl("[三][振].*[盜].*[壘]",x) |
grepl("[三][振].*[暴][投]",x) |
grepl("[三][振].*[出][局].*[盜].*[壘]",x) |
grepl("[出][局].*[失][誤]",x) |
grepl("[出][局].*[犯][規]",x) |
grepl("[出][局].*[安][打]",x) |
grepl("[出][局].*[暴][投]",x) |
grepl("[出][局].*[盜].*[出][局]",x) |
grepl("[出][局].*[盜].*[壘]",x) |
grepl("[出][局].*[暴][傳]",x) |
grepl("[盜].*[壘].*[暴][投]",x) |
grepl("[盜][壘][成][功].*[出][局]",x) |
grepl("[安][打].*[盜]",x) |
grepl("[補][逸]",x) |
grepl("[打][擊].*[盜].*[壘]",x) |
grepl("[時].*[盜].*[壘]",x) |
grepl("[安][打].*[盜]",x) |
grepl("[盜].*[壘].*[安][打]",x) |
grepl("[安][打].*[暴][投]",x) |
grepl("[暴][投].*[安][打]",x) |
grepl("[保][送].*[看][管].*[壘]",x) |
grepl("[上].*[壘].*[保][送]",x) |
grepl("[保][送].*[盜].*[壘]",x) 
 
  
  




  
  #which ( grepl("[一][出][局].*[二][出][局]",x)|grepl("[二][出][局].*[三][出][局]",x)|grepl("[一][出][局].*[三][出][局]",x) ) )
#:....):(.... 第3後面有中文 [義統兄桃][大一弟猿][\\(][0-9]*[0-9][\\)][:][\\(][0-9]*[0-9][\\)][義統兄桃][大一弟猿]



#wherespecialcircumstances=which(specialcircumstances==TRUE)
#length(wherespecialcircumstances)/length(x)*100

return(specialcircumstances)
}