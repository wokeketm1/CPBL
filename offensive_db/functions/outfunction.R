outfunction=function(){

out=character(length(x))
out[grep("[一][出][局]",x)+1]="一出局"
out[grep("[二][出][局]",x)+1]="二出局"
out[grep("[三][出][局]",x)]="三出局"
out[grep("[一][人][出][局]",x)+1]="一出局"
out[grep("[二][人][出][局]",x)+1]="二出局"
out[grep("[三][人][出][局]",x)]="三出局"

##上下局在哪
up=substr(x,regexpr("[1-9][上]", x),regexpr("[1-9][上]", x)+1)
down=substr(x,regexpr("[1-9][下]", x),regexpr("[1-9][下]", x)+1)
inningbyfollow.up=paste0(up,down)
text=inningbyfollow.up[inningbyfollow.up!=""]
changeinning=which((inningbyfollow.up!=""))

#補空白零出局用
out[changeinning]="零出局"

#補其餘空白
for (i in 1:length(out)){
if (out[i]==""){out[i]=out[i-1]}
}


out=gsub("三出局",replacement="二出局",out)

return(out)
}
