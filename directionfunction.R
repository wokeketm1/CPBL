directionfunction=function(){


direction=character(length(x))
direction[grep("[游][擊]",x)]="左"
direction[grep("[中][外][野]",x)]="中"
direction[grep("[左][外][野]",x)]="左"
direction[grep("[右][外][野]",x)]="右"
direction[grep("[右][邊]",x)]="右"
direction[grep("[左][邊]",x)]="左"
direction[grep("[中][間]",x)]="中"
direction[grep("[內][野]",x)]="內"

xxx=substr(x,regexpr("[:]", x),regexpr("[:]", x)+100)
direction[grep("[L][F]",xxx)]="左"
direction[grep("[C][F]",xxx)]="中"
direction[grep("[R][F]",xxx)]="右"
direction[grep("[投][手][正][前][方]",xxx)]="內"




return(direction)

}
